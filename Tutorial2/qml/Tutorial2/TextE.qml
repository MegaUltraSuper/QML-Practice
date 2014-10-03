import QtQuick 1.1

Rectangle{
    height:parent.height/10*6
    width:parent.width
    color: "#C0D0F0"
    y:parent.height/10*4
    TextEdit{
        color:"#102040"
        anchors.fill:parent
        text: {getText()}
        function getText(){
            var s = "Alex is Cool!";
            var thing = ""
            for( var i = 0; i<8 ;i++){
                s+="alex is Cool!";
                thing+=s+"\n"
            }
            return thing;
        }

        wrapMode: TextEdit.Wrap

        onCursorRectangleChanged: flickArea.ensureVisible(cursorRectangle)
        function ensureVisible(r){
            if (contentX >= r.x)
                contentX = r.x;
            else if (contentX+width <= r.x+r.width)
                contentX = r.x+r.width-width;
            if (contentY >= r.y)
                contentY = r.y;
            else if (contentY+height <= r.y+r.height)
                contentY = r.y+r.height-height;
        }
    }
}
