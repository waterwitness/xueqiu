.class public final enum Lcom/xueqiu/android/cube/model/Market;
.super Ljava/lang/Enum;
.source "Market.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/cube/model/Market;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/cube/model/Market;

.field public static final enum CN:Lcom/xueqiu/android/cube/model/Market;

.field public static final enum HK:Lcom/xueqiu/android/cube/model/Market;

.field public static final enum US:Lcom/xueqiu/android/cube/model/Market;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/xueqiu/android/cube/model/Market;

    const-string v1, "CN"

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/cube/model/Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Market;->CN:Lcom/xueqiu/android/cube/model/Market;

    new-instance v0, Lcom/xueqiu/android/cube/model/Market;

    const-string v1, "HK"

    invoke-direct {v0, v1, v3}, Lcom/xueqiu/android/cube/model/Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Market;->HK:Lcom/xueqiu/android/cube/model/Market;

    new-instance v0, Lcom/xueqiu/android/cube/model/Market;

    const-string v1, "US"

    invoke-direct {v0, v1, v4}, Lcom/xueqiu/android/cube/model/Market;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xueqiu/android/cube/model/Market;->US:Lcom/xueqiu/android/cube/model/Market;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xueqiu/android/cube/model/Market;

    sget-object v1, Lcom/xueqiu/android/cube/model/Market;->CN:Lcom/xueqiu/android/cube/model/Market;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xueqiu/android/cube/model/Market;->HK:Lcom/xueqiu/android/cube/model/Market;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xueqiu/android/cube/model/Market;->US:Lcom/xueqiu/android/cube/model/Market;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xueqiu/android/cube/model/Market;->$VALUES:[Lcom/xueqiu/android/cube/model/Market;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/cube/model/Market;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/xueqiu/android/cube/model/Market;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/cube/model/Market;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/cube/model/Market;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xueqiu/android/cube/model/Market;->$VALUES:[Lcom/xueqiu/android/cube/model/Market;

    invoke-virtual {v0}, [Lcom/xueqiu/android/cube/model/Market;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/cube/model/Market;

    return-object v0
.end method


# virtual methods
.method public final bgResId()I
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/xueqiu/android/cube/model/Market$1;->$SwitchMap$com$xueqiu$android$cube$model$Market:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Market;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 36
    const v0, 0x7f02030d

    :goto_0
    return v0

    .line 32
    :pswitch_0
    const v0, 0x7f020306

    goto :goto_0

    .line 34
    :pswitch_1
    const v0, 0x7f020307

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/xueqiu/android/cube/model/Market$1;->$SwitchMap$com$xueqiu$android$cube$model$Market:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/cube/model/Market;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 25
    const-string v0, "\u7f8e\u80a1"

    :goto_0
    return-object v0

    .line 21
    :pswitch_0
    const-string v0, "\u6caa\u6df1"

    goto :goto_0

    .line 23
    :pswitch_1
    const-string v0, "\u6e2f\u80a1"

    goto :goto_0

    .line 19
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isCN()Z
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/xueqiu/android/cube/model/Market;->CN:Lcom/xueqiu/android/cube/model/Market;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isHK()Z
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/xueqiu/android/cube/model/Market;->HK:Lcom/xueqiu/android/cube/model/Market;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUS()Z
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/xueqiu/android/cube/model/Market;->US:Lcom/xueqiu/android/cube/model/Market;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
