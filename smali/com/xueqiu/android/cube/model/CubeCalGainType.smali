.class public final enum Lcom/xueqiu/android/cube/model/CubeCalGainType;
.super Ljava/lang/Enum;
.source "CubeCalGainType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/cube/model/CubeCalGainType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/cube/model/CubeCalGainType;

.field public static final enum DAILY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

.field public static final enum MONTHLY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

.field public static final enum TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;

    const-string v1, "DAILY"

    const-string v2, "daily_gain"

    invoke-direct {v0, v1, v3, v2}, Lcom/xueqiu/android/cube/model/CubeCalGainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->DAILY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 16
    new-instance v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;

    const-string v1, "MONTHLY"

    const-string v2, "monthly_gain"

    invoke-direct {v0, v1, v4, v2}, Lcom/xueqiu/android/cube/model/CubeCalGainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->MONTHLY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 17
    new-instance v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;

    const-string v1, "TOTAL"

    const-string v2, "annualized_gain_rate"

    invoke-direct {v0, v1, v5, v2}, Lcom/xueqiu/android/cube/model/CubeCalGainType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    .line 13
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/cube/model/CubeCalGainType;

    sget-object v1, Lcom/xueqiu/android/cube/model/CubeCalGainType;->DAILY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/cube/model/CubeCalGainType;->MONTHLY:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xueqiu/android/cube/model/CubeCalGainType;->TOTAL:Lcom/xueqiu/android/cube/model/CubeCalGainType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->$VALUES:[Lcom/xueqiu/android/cube/model/CubeCalGainType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->value:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/CubeCalGainType;
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/xueqiu/android/cube/model/CubeCalGainType;->values()[Lcom/xueqiu/android/cube/model/CubeCalGainType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    iget-object v4, v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 31
    :goto_1
    return-object v0

    .line 26
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/CubeCalGainType;
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/cube/model/CubeCalGainType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->$VALUES:[Lcom/xueqiu/android/cube/model/CubeCalGainType;

    invoke-virtual {v0}, [Lcom/xueqiu/android/cube/model/CubeCalGainType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/cube/model/CubeCalGainType;

    return-object v0
.end method


# virtual methods
.method public final value()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/cube/model/CubeCalGainType;->value:Ljava/lang/String;

    return-object v0
.end method
