let cargoHold = {
  cleaned: false,
  daysSinceLastIncident: 0,
  fuel: 0,
  hyperdrive: null,
  recyclables: [],
  toolBin: {
    label: "Primary Tool Bin",
    tools: []
  },
  robotsForSale: [],
  dilithiumOreWeight: 0,
  trash: [],
  toggleCleanedStatus() {
    this.cleaned = !this.cleaned
  },
  addDayForIncidentReport() {
    this.daysSinceLastIncident++
  },
  consolidateFuel(fuelSource) {
    this.fuel += fuelSource.reduce((total, canister) => {
      return total + canister
    })
  },
  retrieveWorkingHyperdrive(driveSource) {
    this.hyperdrive = driveSource.find(drive => {
      return !drive.toLowerCase().includes("rusty")
    })
  },
  filterOutRecyclables(garbageSource) {
    recyclableItems = ["paper", "plastic", "glass", "metal can"]
    let filtered = garbageSource.filter(item => {
      return recyclableItems.includes(item)
    })
    this.recyclables = this.recyclables.concat(filtered)
  }
};

let fuelCanisterPile = [2, 5, 9, 2, 3, 4, 6, 8, 8, 2, 1, 0]

let hyperDrivePile = ["rusty hyperdrive", "millennium hyperdrive", "hyperdrive XL", "rusty hyperdrive", "rusty hyperdrive XL"]

let recyclablesPile = ["paper", "space banana peel", "plastic", "plastic", "glass", "styrofoam coffee mug", "old dilithium battery", "metal can", "paper"]

let oldToolBinsPile = [
 {
   label: "Tool Bin 1",
   items: []
 },
 {
   label: "Tool Bin 2",
   items: ["flux capicitor wrench", "hydrospanner", "android eye scanner", "skeleton key-card"]
 },
 {
   label: "Tool Bin 3",
   items: []
 },
 {
   label: "Tool Bin 4",
   items: ["transponder", "body scanner"]
 },
 {
   label: "Tool Bin 5",
   items: ["multi-pass", "sonic screwdriver", "teleporter gun"]
 }
]

let robotsPile = [
  {
    robotType: "Protocol Droid",
    yearsOld: 41,
    fuel: 0
  },
  {
    robotType: "Astromech Droid",
    yearsOld: 3,
    fuel: 2
  },
  {
    robotType: "Maintenance Droid",
    yearsOld: 10,
    fuel: 1
  },
  {
    robotType: "Bending Robot",
    yearsOld: 19,
    fuel: 0
  }
]

let orePile = [
  {
    status: "glowing",
    weight: 20.5
  },
  {
    status: "stable",
    weight: 15.5
  },
  {
    status: "stable",
    weight: 4.5
  },
  {
    status: "glowing",
    weight: 0.5
  }
]
