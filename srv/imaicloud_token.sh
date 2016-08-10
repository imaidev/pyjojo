
#!/bin/bash

# -- jojo --
# description: generate imaicloud token
# param: imaicloud_expires - 过期时间（自1970年的毫秒数）
# param: imaicloud_payload - 载荷，是base64url编码的字符串
# param: imaicloud_role - 角色，如果多个则用"|"隔开
# param: imaicloud_userid - 用户id，即租户在imaicloud.com的二级域名
# filtered_param: pwd - provent print password to log
# -- jojo --
# expose IMAICLOUD_SECRET secret

md5=$(echo -n '$imaicloud_expires$imaicloud_userid$imaicloud_payload$imaicoud_role $IMAICLOUD_SECRET' | openssl md5 -binary | openssl base64 | tr +/ -_ | tr -d =); echo "jojo_return_value md5=$md5"
exit 0
