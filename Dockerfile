#go-reminders minimal container definition
#
# Copyright 2015-2019 VMware, Inc. All Rights Reserved.
# Author: Tom Hite (thite@vmware.com)
#
# SPDX-License-Identifier: https://spdx.org/licenses/MIT.html
#

# Start from scratch
FROM scratch
MAINTAINER Thomas Kraus <tkrausjr@gmail.com>

# Add the microservice
ADD cmd/go-reminders/go-reminders /go-reminders

# Add the content (html and templates)
ADD html /html

EXPOSE 8080

ENTRYPOINT ["/go-reminders"]
