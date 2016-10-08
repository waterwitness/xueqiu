.class public final Lcom/xueqiu/android/message/client/e;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"


# direct methods
.method private static a(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getAttachment()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 32
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lcom/xueqiu/android/base/storage/DBManager;Lcom/snowballfinance/messageplatform/data/SystemEvent;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getText()Ljava/lang/String;

    move-result-object v0

    .line 86
    :goto_0
    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1090
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 1091
    sget-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/client/e;->a(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1092
    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/xueqiu/android/message/client/e;->b(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1093
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 1095
    const-string v0, "\u4f60"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1100
    :goto_1
    const-string v0, "\u9080\u8bf7"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->getUsersByUserIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v2

    .line 1102
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1103
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_3

    .line 1104
    const-string v0, "\u4f60"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :goto_3
    const-string v0, "\u3001"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1097
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v4

    .line 1098
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1106
    :cond_3
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1110
    :cond_4
    invoke-virtual {v2}, Lcom/xueqiu/android/base/storage/ResultSet;->missed()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1112
    const-string v0, "\u3001"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1114
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1115
    const-string v0, "\u52a0\u5165\u672c\u7fa4"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 79
    :cond_6
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 80
    invoke-static {p0, p1}, Lcom/xueqiu/android/message/client/e;->b(Lcom/xueqiu/android/base/storage/DBManager;Lcom/snowballfinance/messageplatform/data/SystemEvent;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_7
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1148
    sget-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/client/e;->a(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 1149
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7fa4\u7ec4\u5df2\u7ecf\u88ab"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1152
    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1153
    const-string v0, "\u4f60"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    :goto_5
    const-string v0, "\u89e3\u6563"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1155
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 1156
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 83
    :cond_9
    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getType()Lcom/snowballfinance/messageplatform/data/SystemEventType;

    move-result-object v0

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0, v1}, Lcom/snowballfinance/messageplatform/data/SystemEventType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1163
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 1164
    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v1}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/xueqiu/android/message/client/e;->a(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 1165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u7fa4\u7ec4\u5df2\u7ecf\u88ab"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1167
    const-string v0, "\u4f60"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :goto_6
    const-string v0, "\u547d\u540d\u4e3a"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1173
    const-string v0, "\u201c%s\u201d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getAttachment()Ljava/util/Map;

    move-result-object v4

    sget-object v5, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_NAME:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v5}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1169
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    .line 1170
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 86
    :cond_b
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private static b(Lcom/xueqiu/android/base/storage/DBManager;Lcom/snowballfinance/messageplatform/data/SystemEvent;)Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 120
    invoke-virtual {p0}, Lcom/xueqiu/android/base/storage/DBManager;->getCurrentUser()Lcom/xueqiu/android/community/model/User;

    move-result-object v1

    .line 121
    sget-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/client/e;->a(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 122
    sget-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v0}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xueqiu/android/message/client/e;->b(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/xueqiu/android/base/storage/DBManager;->queryUserByUserId(J)Lcom/xueqiu/android/community/model/User;

    move-result-object v5

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/base/storage/DBManager;->getUsersByUserIds(Ljava/util/Set;)Lcom/xueqiu/android/base/storage/ResultSet;

    move-result-object v6

    .line 126
    invoke-virtual {v6}, Lcom/xueqiu/android/base/storage/ResultSet;->founded()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 127
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 128
    const-string v0, "\u4f60"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :goto_1
    const-string v0, "\u3001"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 134
    :cond_1
    invoke-virtual {v6}, Lcom/xueqiu/android/base/storage/ResultSet;->missed()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 135
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v0, "\u3001"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 138
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v12, :cond_4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    :cond_3
    const-string v0, "\u5df2\u9000\u51fa\u7fa4\u7ec4"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :goto_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 142
    :cond_4
    const-string v3, "\u88ab%s\u8bf7\u51fa\u7fa4\u7ec4"

    new-array v6, v12, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_5

    const-string v0, "\u4f60"

    :goto_4
    aput-object v0, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static b(Lcom/snowballfinance/messageplatform/data/SystemEvent;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/snowballfinance/messageplatform/data/SystemEvent;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/snowballfinance/messageplatform/data/SystemEvent;->getAttachment()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 44
    instance-of v3, v0, Ljava/lang/Double;

    if-eqz v3, :cond_1

    .line 45
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v2, "SystemEventUtil"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Lcom/xueqiu/android/base/util/v;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    :cond_0
    return-object v1

    .line 47
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
