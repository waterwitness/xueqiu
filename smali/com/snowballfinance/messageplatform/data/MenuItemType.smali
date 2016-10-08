.class public final enum Lcom/snowballfinance/messageplatform/data/MenuItemType;
.super Ljava/lang/Enum;
.source "MenuItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/MenuItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/MenuItemType;

.field public static final enum CLICK:Lcom/snowballfinance/messageplatform/data/MenuItemType;

.field public static final enum VIEW:Lcom/snowballfinance/messageplatform/data/MenuItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/MenuItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;->CLICK:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    .line 13
    new-instance v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;

    const-string v1, "VIEW"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/MenuItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;->VIEW:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/MenuItemType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuItemType;->CLICK:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/snowballfinance/messageplatform/data/MenuItemType;->VIEW:Lcom/snowballfinance/messageplatform/data/MenuItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/MenuItemType;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/MenuItemType;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/MenuItemType;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/snowballfinance/messageplatform/data/MenuItemType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/MenuItemType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/MenuItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/MenuItemType;

    return-object v0
.end method
