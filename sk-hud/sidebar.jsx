import { React } from "uebersicht"
import { styled } from "uebersicht" // Emotion styles - https://emotion.sh/
import { run } from "uebersicht" // run extra commands

export const command = "echo Hello World!"
export const refreshFrequency = 5000 // ms

const Container = styled("main")`
    width: 450px;
    height: 100%;
    background-color: rgba(0,0,0,0.4);
    padding: 40px;
    margin: 40px;
    color: white;
    font-family: Helvetica Neue;
`

const Header = styled("header")`
  margin: 0 0 32px;
  h1 {
    font-weight: 100;
  }
  p {
    font-weight: 100;
  }
`

export const render = ({ output }) => (
  <>
    <Container>
      <Header>
        <h1>{output}</h1>
        <p>
          My personal collection of custom and modified Übersicht widgets.
        </p>
      </Header>
    </Container>
  </>
)
