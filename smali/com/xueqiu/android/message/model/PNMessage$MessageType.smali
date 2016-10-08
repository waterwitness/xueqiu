.class public final enum Lcom/xueqiu/android/message/model/PNMessage$MessageType;
.super Ljava/lang/Enum;
.source "PNMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/message/model/PNMessage$MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum ATME:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum CALENDAR:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum COMMENT:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum DM:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum FOLLOWED:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum HOLDING:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum REPORTS:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

.field public static final enum UNREAD:Lcom/xueqiu/android/message/model/PNMessage$MessageType;


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
    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "UNREAD"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->UNREAD:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "FOLLOWED"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->FOLLOWED:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "COMMENT"

    invoke-direct {v0, v1, v5}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->COMMENT:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "ATME"

    invoke-direct {v0, v1, v6}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->ATME:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "DM"

    invoke-direct {v0, v1, v7}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->DM:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "HOLDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->HOLDING:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "REPORTS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->REPORTS:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    new-instance v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    const-string v1, "CALENDAR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/message/model/PNMessage$MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->CALENDAR:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    .line 23
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    sget-object v1, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->UNREAD:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->FOLLOWED:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->COMMENT:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->ATME:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->DM:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->HOLDING:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->REPORTS:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->CALENDAR:Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->$VALUES:[Lcom/xueqiu/android/message/model/PNMessage$MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/message/model/PNMessage$MessageType;
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/message/model/PNMessage$MessageType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/xueqiu/android/message/model/PNMessage$MessageType;->$VALUES:[Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    invoke-virtual {v0}, [Lcom/xueqiu/android/message/model/PNMessage$MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/message/model/PNMessage$MessageType;

    return-object v0
.end method
