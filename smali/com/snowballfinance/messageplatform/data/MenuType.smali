.class public final enum Lcom/snowballfinance/messageplatform/data/MenuType;
.super Ljava/lang/Enum;
.source "MenuType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/MenuType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/MenuType;

.field public static final enum HYBRID_MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

.field public static final enum MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

.field public static final enum NONE:Lcom/snowballfinance/messageplatform/data/MenuType;

.field public static final enum TEXT_INPUT:Lcom/snowballfinance/messageplatform/data/MenuType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MenuType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->NONE:Lcom/snowballfinance/messageplatform/data/MenuType;

    .line 17
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MenuType;

    const-string v1, "TEXT_INPUT"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->TEXT_INPUT:Lcom/snowballfinance/messageplatform/data/MenuType;

    .line 21
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MenuType;

    const-string v1, "MENU"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

    .line 25
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MenuType;

    const-string v1, "HYBRID_MENU"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/MenuType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->HYBRID_MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/MenuType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->NONE:Lcom/snowballfinance/messageplatform/data/MenuType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->TEXT_INPUT:Lcom/snowballfinance/messageplatform/data/MenuType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuType;->HYBRID_MENU:Lcom/snowballfinance/messageplatform/data/MenuType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/MenuType;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/MenuType;
    .locals 1

    .prologue
    .line 9
    const-class v0, Lcom/snowballfinance/messageplatform/data/MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MenuType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/MenuType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MenuType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/MenuType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/MenuType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/MenuType;

    return-object v0
.end method
