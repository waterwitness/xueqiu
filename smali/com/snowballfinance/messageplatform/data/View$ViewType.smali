.class public final enum Lcom/snowballfinance/messageplatform/data/View$ViewType;
.super Ljava/lang/Enum;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/View$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/View$ViewType;

.field public static final enum MULTI_TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

.field public static final enum POST:Lcom/snowballfinance/messageplatform/data/View$ViewType;

.field public static final enum SIMPLE_TEXT:Lcom/snowballfinance/messageplatform/data/View$ViewType;

.field public static final enum STOCK:Lcom/snowballfinance/messageplatform/data/View$ViewType;

.field public static final enum TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

.field public static final enum USER_INFO:Lcom/snowballfinance/messageplatform/data/View$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    const-string v1, "SIMPLE_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/View$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->SIMPLE_TEXT:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    const-string v1, "TEXT_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/View$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    const-string v1, "MULTI_TEXT_IMAGE"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/View$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->MULTI_TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    const-string v1, "STOCK"

    invoke-direct {v0, v1, v6}, Lcom/snowballfinance/messageplatform/data/View$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->STOCK:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    const-string v1, "USER_INFO"

    invoke-direct {v0, v1, v7}, Lcom/snowballfinance/messageplatform/data/View$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->USER_INFO:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    const-string v1, "POST"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/View$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->POST:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/View$ViewType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/View$ViewType;->SIMPLE_TEXT:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/View$ViewType;->TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/View$ViewType;->MULTI_TEXT_IMAGE:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowballfinance/messageplatform/data/View$ViewType;->STOCK:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snowballfinance/messageplatform/data/View$ViewType;->USER_INFO:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snowballfinance/messageplatform/data/View$ViewType;->POST:Lcom/snowballfinance/messageplatform/data/View$ViewType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/View$ViewType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/View$ViewType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/View$ViewType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/snowballfinance/messageplatform/data/View$ViewType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/View$ViewType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/View$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/View$ViewType;

    return-object v0
.end method
