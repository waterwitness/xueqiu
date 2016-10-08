.class final Lcom/xueqiu/android/stock/c/y;
.super Ljava/lang/Object;
.source "StockDetailFragment.java"


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1197
    const/4 v0, 0x1

    iput v0, p0, Lcom/xueqiu/android/stock/c/y;->a:I

    .line 1198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xueqiu/android/stock/c/y;->b:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 1196
    invoke-direct {p0}, Lcom/xueqiu/android/stock/c/y;-><init>()V

    return-void
.end method
