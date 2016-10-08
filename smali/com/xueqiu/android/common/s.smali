.class public final Lcom/xueqiu/android/common/s;
.super Landroid/database/DataSetObserver;
.source "SNBListView.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xueqiu/android/common/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/xueqiu/android/common/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/common/s;->a:Ljava/lang/ref/WeakReference;

    .line 282
    iput-object p1, p0, Lcom/xueqiu/android/common/s;->a:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 0

    .prologue
    .line 293
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/xueqiu/android/common/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/xueqiu/android/common/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/common/r;

    .line 1043
    invoke-virtual {v0}, Lcom/xueqiu/android/common/r;->b()V

    .line 289
    :cond_0
    return-void
.end method
