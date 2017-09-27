/*
 * Copyright @ 2017-present Atlassian Pty Ltd
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
  
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        // Some fake data for the table
        table.setNumberOfRows(2, withRowType: "MeetingRowType")
        var controller = table.rowController(at: 0) as! MeetingRowController
        controller.roomLabel.setText("HCVideoStandup")
        controller.timeLabel.setText("17:45")
      
        controller = table.rowController(at: 1) as! MeetingRowController
        controller.roomLabel.setText("DoYouEvenWatch")
        controller.timeLabel.setText("23:59")
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
