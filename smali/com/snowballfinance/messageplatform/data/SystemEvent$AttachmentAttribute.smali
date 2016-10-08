.class public final enum Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;
.super Ljava/lang/Enum;
.source "SystemEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum BLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum BLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum DEVICE_CONNECTED_CHANNEL:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum DEVICE_CONNECTED_USER_ID:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum DEVICE_CONNECTED_VERSION:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum DISMISS_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum FOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum FOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum UNBLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum UNBLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum UNFOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum UNFOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum UPDATE_GROUP_NAME:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum USER_CHANNEL_CONNECTED_CHANNEL:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum USER_CHANNEL_CONNECTED_USER_ID:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

.field public static final enum USER_CHANNEL_CONNECTED_VERSION:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "JOIN_GROUP_INVITER"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 25
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "JOIN_GROUP_INVITEES"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 26
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "LEAVE_GROUP_OPERATOR"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 27
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "LEAVE_GROUP_TARGETS"

    invoke-direct {v0, v1, v6}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 28
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "DISMISS_GROUP_OPERATOR"

    invoke-direct {v0, v1, v7}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 29
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "DISMISS_GROUP_TARGETS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 30
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "UPDATE_GROUP_NAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_NAME:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 31
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "UPDATE_GROUP_OPERATOR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 32
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "FOLLOWED_TARGET"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->FOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 33
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "FOLLOWED_OPERATOR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->FOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 34
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "UNFOLLOWED_TARGET"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNFOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 35
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "UNFOLLOWED_OPERATOR"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNFOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 36
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "BLOCKED_TARGET"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->BLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 37
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "BLOCKED_OPERATOR"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->BLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 38
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "UNBLOCKED_TARGET"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNBLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 39
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "UNBLOCKED_OPERATOR"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNBLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 40
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "DEVICE_CONNECTED_USER_ID"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DEVICE_CONNECTED_USER_ID:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 41
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "DEVICE_CONNECTED_CHANNEL"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DEVICE_CONNECTED_CHANNEL:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 42
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "DEVICE_CONNECTED_VERSION"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DEVICE_CONNECTED_VERSION:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 43
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "USER_CHANNEL_CONNECTED_USER_ID"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->USER_CHANNEL_CONNECTED_USER_ID:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 44
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "USER_CHANNEL_CONNECTED_CHANNEL"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->USER_CHANNEL_CONNECTED_CHANNEL:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 45
    new-instance v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    const-string v1, "USER_CHANNEL_CONNECTED_VERSION"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->USER_CHANNEL_CONNECTED_VERSION:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    .line 23
    const/16 v0, 0x16

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITER:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->JOIN_GROUP_INVITEES:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->LEAVE_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DISMISS_GROUP_TARGETS:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_NAME:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UPDATE_GROUP_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->FOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->FOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNFOLLOWED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNFOLLOWED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->BLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->BLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNBLOCKED_TARGET:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->UNBLOCKED_OPERATOR:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DEVICE_CONNECTED_USER_ID:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DEVICE_CONNECTED_CHANNEL:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->DEVICE_CONNECTED_VERSION:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->USER_CHANNEL_CONNECTED_USER_ID:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->USER_CHANNEL_CONNECTED_CHANNEL:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->USER_CHANNEL_CONNECTED_VERSION:Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->$VALUES:[Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->$VALUES:[Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/SystemEvent$AttachmentAttribute;

    return-object v0
.end method
