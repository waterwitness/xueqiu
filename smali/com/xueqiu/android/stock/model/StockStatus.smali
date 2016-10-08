.class public final enum Lcom/xueqiu/android/stock/model/StockStatus;
.super Ljava/lang/Enum;
.source "StockStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xueqiu/android/stock/model/StockStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xueqiu/android/stock/model/StockStatus;

.field public static final enum DELIST:Lcom/xueqiu/android/stock/model/StockStatus;

.field public static final enum LIMIT_DOWN:Lcom/xueqiu/android/stock/model/StockStatus;

.field public static final enum LIMIT_UP:Lcom/xueqiu/android/stock/model/StockStatus;

.field public static final enum LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

.field public static final enum SUSPEND:Lcom/xueqiu/android/stock/model/StockStatus;

.field public static final enum UNLISTED:Lcom/xueqiu/android/stock/model/StockStatus;

.field private static valueArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/xueqiu/android/stock/model/StockStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 16
    new-instance v1, Lcom/xueqiu/android/stock/model/StockStatus;

    const-string v2, "UNLISTED"

    invoke-direct {v1, v2, v0, v0}, Lcom/xueqiu/android/stock/model/StockStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->UNLISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockStatus;

    const-string v2, "LISTED"

    invoke-direct {v1, v2, v5, v5}, Lcom/xueqiu/android/stock/model/StockStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockStatus;

    const-string v2, "SUSPEND"

    invoke-direct {v1, v2, v6, v6}, Lcom/xueqiu/android/stock/model/StockStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->SUSPEND:Lcom/xueqiu/android/stock/model/StockStatus;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockStatus;

    const-string v2, "DELIST"

    invoke-direct {v1, v2, v7, v7}, Lcom/xueqiu/android/stock/model/StockStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->DELIST:Lcom/xueqiu/android/stock/model/StockStatus;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockStatus;

    const-string v2, "LIMIT_UP"

    invoke-direct {v1, v2, v8, v8}, Lcom/xueqiu/android/stock/model/StockStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->LIMIT_UP:Lcom/xueqiu/android/stock/model/StockStatus;

    new-instance v1, Lcom/xueqiu/android/stock/model/StockStatus;

    const-string v2, "LIMIT_DOWN"

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcom/xueqiu/android/stock/model/StockStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->LIMIT_DOWN:Lcom/xueqiu/android/stock/model/StockStatus;

    .line 15
    const/4 v1, 0x6

    new-array v1, v1, [Lcom/xueqiu/android/stock/model/StockStatus;

    sget-object v2, Lcom/xueqiu/android/stock/model/StockStatus;->UNLISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    aput-object v2, v1, v0

    sget-object v2, Lcom/xueqiu/android/stock/model/StockStatus;->LISTED:Lcom/xueqiu/android/stock/model/StockStatus;

    aput-object v2, v1, v5

    sget-object v2, Lcom/xueqiu/android/stock/model/StockStatus;->SUSPEND:Lcom/xueqiu/android/stock/model/StockStatus;

    aput-object v2, v1, v6

    sget-object v2, Lcom/xueqiu/android/stock/model/StockStatus;->DELIST:Lcom/xueqiu/android/stock/model/StockStatus;

    aput-object v2, v1, v7

    sget-object v2, Lcom/xueqiu/android/stock/model/StockStatus;->LIMIT_UP:Lcom/xueqiu/android/stock/model/StockStatus;

    aput-object v2, v1, v8

    const/4 v2, 0x5

    sget-object v3, Lcom/xueqiu/android/stock/model/StockStatus;->LIMIT_DOWN:Lcom/xueqiu/android/stock/model/StockStatus;

    aput-object v3, v1, v2

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->$VALUES:[Lcom/xueqiu/android/stock/model/StockStatus;

    .line 47
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/xueqiu/android/stock/model/StockStatus;->valueArray:Landroid/util/SparseArray;

    .line 50
    invoke-static {}, Lcom/xueqiu/android/stock/model/StockStatus;->values()[Lcom/xueqiu/android/stock/model/StockStatus;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 51
    sget-object v4, Lcom/xueqiu/android/stock/model/StockStatus;->valueArray:Landroid/util/SparseArray;

    iget v5, v3, Lcom/xueqiu/android/stock/model/StockStatus;->value:I

    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/xueqiu/android/stock/model/StockStatus;->value:I

    .line 22
    return-void
.end method

.method public static fromInt(I)Lcom/xueqiu/android/stock/model/StockStatus;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/xueqiu/android/stock/model/StockStatus;->valueArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockStatus;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xueqiu/android/stock/model/StockStatus;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/xueqiu/android/stock/model/StockStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/stock/model/StockStatus;

    return-object v0
.end method

.method public static values()[Lcom/xueqiu/android/stock/model/StockStatus;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/xueqiu/android/stock/model/StockStatus;->$VALUES:[Lcom/xueqiu/android/stock/model/StockStatus;

    invoke-virtual {v0}, [Lcom/xueqiu/android/stock/model/StockStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xueqiu/android/stock/model/StockStatus;

    return-object v0
.end method


# virtual methods
.method public final description()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/xueqiu/android/stock/model/StockStatus$1;->$SwitchMap$com$xueqiu$android$stock$model$StockStatus:[I

    invoke-virtual {p0}, Lcom/xueqiu/android/stock/model/StockStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 43
    const-string v0, ""

    :goto_0
    return-object v0

    .line 31
    :pswitch_0
    const-string v0, "\u672a\u4e0a\u5e02"

    goto :goto_0

    .line 33
    :pswitch_1
    const-string v0, "\u5df2\u4e0a\u5e02"

    goto :goto_0

    .line 35
    :pswitch_2
    const-string v0, "\u505c\u724c"

    goto :goto_0

    .line 37
    :pswitch_3
    const-string v0, "\u9000\u5e02"

    goto :goto_0

    .line 39
    :pswitch_4
    const-string v0, "\u6da8\u505c"

    goto :goto_0

    .line 41
    :pswitch_5
    const-string v0, "\u8dcc\u505c"

    goto :goto_0

    .line 29
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final value()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/xueqiu/android/stock/model/StockStatus;->value:I

    return v0
.end method
