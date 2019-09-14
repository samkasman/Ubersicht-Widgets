import { React } from "uebersicht"
import { styled } from "uebersicht" // Emotion styles - https://emotion.sh/
import { run } from "uebersicht" // run extra commands

const Background = styled("main")`
    width: 100vw;
    height: 100vh;
	background-image: linear-gradient(180deg, #FD7CCD 0%, #00F6F8 100%);
	opacity: .2;
    color: white;
    font-family: Helvetica Neue;
`

export const render = () => (
	<>
		<Background />
	</>
)
