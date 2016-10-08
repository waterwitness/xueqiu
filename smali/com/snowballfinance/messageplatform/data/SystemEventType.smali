.class public final enum Lcom/snowballfinance/messageplatform/data/SystemEventType;
.super Ljava/lang/Enum;
.source "SystemEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/SystemEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum ATME:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum BLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum CALENDAR:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum CLOSE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum COMMENT:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum DEVICE_CONNECTED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum DM:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum FOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum HOLDING:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum INTERVIEW:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum REFRESH_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum REFRESH_GROUP_IMAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum REFRESH_USER:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum REPORTS:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum REQUEST_JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum SYSTEM:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum SYSTEM_PUSH:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum UNBLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum UNFOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum UNREAD:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

.field public static final enum USER_CHANNEL_CONNECTED:Lcom/snowballfinance/messageplatform/data/SystemEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "SYSTEM"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "INTERVIEW"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->INTERVIEW:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "UNREAD"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNREAD:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "FOLLOWED"

    invoke-direct {v0, v1, v6}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->FOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v7}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->COMMENT:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "ATME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->ATME:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "DM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DM:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "HOLDING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->HOLDING:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "REPORTS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REPORTS:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "CALENDAR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->CALENDAR:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "CLOSE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->CLOSE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "JOIN_GROUP"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "LEAVE_GROUP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "UPDATE_GROUP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "DISMISS_GROUP"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "UNFOLLOWED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNFOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "BLOCKED"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->BLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "UNBLOCKED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNBLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "REFRESH_GROUP_IMAGE"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_GROUP_IMAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 13
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "DEVICE_CONNECTED"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DEVICE_CONNECTED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 17
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "USER_CHANNEL_CONNECTED"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->USER_CHANNEL_CONNECTED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 18
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "REQUEST_JOIN_GROUP"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REQUEST_JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 19
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "REFRESH_GROUP"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 20
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "REFRESH_USER"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_USER:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 21
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "SYSTEM_MESSAGE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 22
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    const-string v1, "SYSTEM_PUSH"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_PUSH:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    .line 8
    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/SystemEventType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->INTERVIEW:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNREAD:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->FOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEventType;->COMMENT:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->ATME:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DM:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->HOLDING:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REPORTS:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->CALENDAR:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->CLOSE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->LEAVE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UPDATE_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DISMISS_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNFOLLOWED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->BLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->UNBLOCKED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_GROUP_IMAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->DEVICE_CONNECTED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->USER_CHANNEL_CONNECTED:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REQUEST_JOIN_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_GROUP:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->REFRESH_USER:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_MESSAGE:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEventType;->SYSTEM_PUSH:Lcom/snowballfinance/messageplatform/data/SystemEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/SystemEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEventType;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/SystemEventType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/snowballfinance/messageplatform/data/SystemEventType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/SystemEventType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/SystemEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/SystemEventType;

    return-object v0
.end method
