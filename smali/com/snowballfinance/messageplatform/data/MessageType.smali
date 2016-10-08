.class public final enum Lcom/snowballfinance/messageplatform/data/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum CARD:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum LOCATION:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum PLAIN:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum STICKER:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum SYSTEM_EVENT:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

.field public static final enum VOICE:Lcom/snowballfinance/messageplatform/data/MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->PLAIN:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 22
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 26
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "STICKER"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->STICKER:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 30
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v6}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->CARD:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 34
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v7}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 38
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "VOICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->VOICE:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 42
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "LOCATION"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->LOCATION:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 46
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    const-string v1, "SYSTEM_EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->SYSTEM_EVENT:Lcom/snowballfinance/messageplatform/data/MessageType;

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/MessageType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->PLAIN:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->VIEW:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->STICKER:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->CARD:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MessageType;->IMAGE:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snowballfinance/messageplatform/data/MessageType;->VOICE:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/snowballfinance/messageplatform/data/MessageType;->LOCATION:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/snowballfinance/messageplatform/data/MessageType;->SYSTEM_EVENT:Lcom/snowballfinance/messageplatform/data/MessageType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/MessageType;

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
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/MessageType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/MessageType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MessageType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/MessageType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/MessageType;

    return-object v0
.end method
