type roomType = {
    id: string,
    body: string,
    connected: bool,
  }

let emptyRoom = {
  id: "",
  body: "",
  connected: false,
}

let context = React.createContext((emptyRoom, _ => ()))

let useState = () => {
  React.useContext(context)
}

let useConnect = () => {
  let (_room, setRoomState) = useState()

  room => setRoomState(room)
}

@react.component
let make = () => {
  let connect = useConnect()
  connect({id: "id", body: "body", connected: true})

  <div>{React.string("Hello, world")}</div>
}
