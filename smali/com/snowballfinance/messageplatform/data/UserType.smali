.class public final enum Lcom/snowballfinance/messageplatform/data/UserType;
.super Ljava/lang/Enum;
.source "UserType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/snowballfinance/messageplatform/data/UserType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/snowballfinance/messageplatform/data/UserType;

.field public static final enum ANONYMOUS_USER:Lcom/snowballfinance/messageplatform/data/UserType;

.field public static final enum NORMAL_USER:Lcom/snowballfinance/messageplatform/data/UserType;

.field public static final enum SERVICE_ACCOUNT:Lcom/snowballfinance/messageplatform/data/UserType;

.field public static final enum SLOT0:Lcom/snowballfinance/messageplatform/data/UserType;

.field public static final enum SLOT2:Lcom/snowballfinance/messageplatform/data/UserType;

.field public static final enum SLOT3:Lcom/snowballfinance/messageplatform/data/UserType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/snowballfinance/messageplatform/data/UserType;

    const-string v1, "SLOT0"

    invoke-direct {v0, v1, v3}, Lcom/snowballfinance/messageplatform/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->SLOT0:Lcom/snowballfinance/messageplatform/data/UserType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/UserType;

    const-string v1, "NORMAL_USER"

    invoke-direct {v0, v1, v4}, Lcom/snowballfinance/messageplatform/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->NORMAL_USER:Lcom/snowballfinance/messageplatform/data/UserType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/UserType;

    const-string v1, "SLOT2"

    invoke-direct {v0, v1, v5}, Lcom/snowballfinance/messageplatform/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->SLOT2:Lcom/snowballfinance/messageplatform/data/UserType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/UserType;

    const-string v1, "SLOT3"

    invoke-direct {v0, v1, v6}, Lcom/snowballfinance/messageplatform/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->SLOT3:Lcom/snowballfinance/messageplatform/data/UserType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/UserType;

    const-string v1, "SERVICE_ACCOUNT"

    invoke-direct {v0, v1, v7}, Lcom/snowballfinance/messageplatform/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->SERVICE_ACCOUNT:Lcom/snowballfinance/messageplatform/data/UserType;

    new-instance v0, Lcom/snowballfinance/messageplatform/data/UserType;

    const-string v1, "ANONYMOUS_USER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/snowballfinance/messageplatform/data/UserType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->ANONYMOUS_USER:Lcom/snowballfinance/messageplatform/data/UserType;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/snowballfinance/messageplatform/data/UserType;

    sget-object v1, Lcom/snowballfinance/messageplatform/data/UserType;->SLOT0:Lcom/snowballfinance/messageplatform/data/UserType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/snowballfinance/messageplatform/data/UserType;->NORMAL_USER:Lcom/snowballfinance/messageplatform/data/UserType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/snowballfinance/messageplatform/data/UserType;->SLOT2:Lcom/snowballfinance/messageplatform/data/UserType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/snowballfinance/messageplatform/data/UserType;->SLOT3:Lcom/snowballfinance/messageplatform/data/UserType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/snowballfinance/messageplatform/data/UserType;->SERVICE_ACCOUNT:Lcom/snowballfinance/messageplatform/data/UserType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/snowballfinance/messageplatform/data/UserType;->ANONYMOUS_USER:Lcom/snowballfinance/messageplatform/data/UserType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/UserType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/snowballfinance/messageplatform/data/UserType;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/snowballfinance/messageplatform/data/UserType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/snowballfinance/messageplatform/data/UserType;

    return-object v0
.end method

.method public static values()[Lcom/snowballfinance/messageplatform/data/UserType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/snowballfinance/messageplatform/data/UserType;->$VALUES:[Lcom/snowballfinance/messageplatform/data/UserType;

    invoke-virtual {v0}, [Lcom/snowballfinance/messageplatform/data/UserType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/snowballfinance/messageplatform/data/UserType;

    return-object v0
.end method
