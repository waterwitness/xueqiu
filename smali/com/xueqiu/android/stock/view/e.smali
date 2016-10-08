.class final Lcom/xueqiu/android/stock/view/e;
.super Landroid/database/DataSetObserver;
.source "TableFixHeaders.java"


# instance fields
.field final synthetic a:Lcom/xueqiu/android/stock/view/TableFixHeaders;


# direct methods
.method private constructor <init>(Lcom/xueqiu/android/stock/view/TableFixHeaders;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lcom/xueqiu/android/stock/view/e;->a:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xueqiu/android/stock/view/TableFixHeaders;B)V
    .locals 0

    .prologue
    .line 818
    invoke-direct {p0, p1}, Lcom/xueqiu/android/stock/view/e;-><init>(Lcom/xueqiu/android/stock/view/TableFixHeaders;)V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 822
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/e;->a:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-static {v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->a(Lcom/xueqiu/android/stock/view/TableFixHeaders;)Z

    .line 823
    iget-object v0, p0, Lcom/xueqiu/android/stock/view/e;->a:Lcom/xueqiu/android/stock/view/TableFixHeaders;

    invoke-virtual {v0}, Lcom/xueqiu/android/stock/view/TableFixHeaders;->requestLayout()V

    .line 824
    return-void
.end method

.method public final onInvalidated()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method
