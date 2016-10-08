.class synthetic Lcom/xueqiu/android/cube/model/Market$1;
.super Ljava/lang/Object;
.source "Market.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/model/Market;
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$xueqiu$android$cube$model$Market:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    invoke-static {}, Lcom/xueqiu/android/cube/model/Market;->values()[Lcom/xueqiu/android/cube/model/Market;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/xueqiu/android/cube/model/Market$1;->$SwitchMap$com$xueqiu$android$cube$model$Market:[I

    :try_start_0
    sget-object v0, Lcom/xueqiu/android/cube/model/Market$1;->$SwitchMap$com$xueqiu$android$cube$model$Market:[I

    sget-object v1, Lcom/xueqiu/android/cube/model/Market;->CN:Lcom/xueqiu/android/cube/model/Market;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Market;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lcom/xueqiu/android/cube/model/Market$1;->$SwitchMap$com$xueqiu$android$cube$model$Market:[I

    sget-object v1, Lcom/xueqiu/android/cube/model/Market;->HK:Lcom/xueqiu/android/cube/model/Market;

    invoke-virtual {v1}, Lcom/xueqiu/android/cube/model/Market;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
