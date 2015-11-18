import QtQuick 2.2

Rectangle {
	id: colorPicker;
	width: 50;
	height: 30;
	signal colorPicked(color clr);
	function configureBorder(){
		colorPicker.border.with = colorPicker.focus ? 2 : 0;
		colorPicker.border.color = colorPicker.focus? "#90D750" : "#808080";	
	}
	
	MouseArea{
		anchord.fill: parent;
		onClick: {
			colorPicker.colorPicked(colorpicker.color);
			mouse.accepted = true;
			colorPicker.focus = true;
		}
	}

	Keys.onReturnPresssed:{
		colorPicker.colorPicked(colorPicker.color);
		event.accepted = true;
	}

	Keys.onSpacePresssed:{
		colorPicker.colorPicked(colorPicker.color);
		event.accepted = true;
	}
	
	onFocusChanged:{
		configureBorder();
	}

	Component.onCompleted:{
		configureBorder();
	}
}
