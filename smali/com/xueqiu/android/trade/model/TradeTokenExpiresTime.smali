.class public final enum Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;
.super Ljava/lang/Enum;
.source "TradeTokenExpiresTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

.field public static final enum ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

.field public static final enum EVERY_TIME:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

.field public static final enum FIFTEEN:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

.field public static final enum THREE:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;


# instance fields
.field private label:Ljava/lang/String;

.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    const-string v1, "ALL_DAY"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    .line 13
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    const-string v1, "EVERY_TIME"

    invoke-direct {v0, v1, v5, v3}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->EVERY_TIME:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    .line 14
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    const-string v1, "THREE"

    invoke-direct {v0, v1, v6, v4}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->THREE:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    .line 15
    new-instance v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    const-string v1, "FIFTEEN"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v4, v2}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->FIFTEEN:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    sget-object v1, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->EVERY_TIME:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->THREE:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->FIFTEEN:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->$VALUES:[Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput p3, p0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value:I

    .line 23
    return-void
.end method

.method public static fromValue(I)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;
    .locals 5

    .prologue
    .line 26
    invoke-static {}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->values()[Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 27
    iget v4, v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value:I

    if-ne v4, p0, :cond_0

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
    sget-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ALL_DAY:Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    goto :goto_1
.end method

.method public static getlable(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    invoke-static {}, Lcom/xueqiu/android/trade/model/SnowxTraderConfig;->getAccessTokeExpiresConfig()Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;

    .line 56
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->getConfigValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 57
    if-ne p0, v2, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xueqiu/android/trade/model/SnowxTraderConfigItem;->getConfigMessage()Ljava/lang/String;

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->$VALUES:[Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    invoke-virtual {v0}, [Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;

    return-object v0
.end method


# virtual methods
.method public final lableResId()I
    .locals 3

    .prologue
    const v0, 0x7f07046c

    .line 39
    sget-object v1, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime$1;->$SwitchMap$com$xueqiu$android$trade$model$TradeTokenExpiresTime:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 49
    :goto_0
    :pswitch_0
    return v0

    .line 43
    :pswitch_1
    const v0, 0x7f07046d

    goto :goto_0

    .line 45
    :pswitch_2
    const v0, 0x7f07046f

    goto :goto_0

    .line 47
    :pswitch_3
    const v0, 0x7f07046e

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/xueqiu/android/trade/model/TradeTokenExpiresTime;->value:I

    return v0
.end method
