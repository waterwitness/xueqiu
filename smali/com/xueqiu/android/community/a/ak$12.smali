.class final Lcom/xueqiu/android/community/a/ak$12;
.super Landroid/database/DataSetObserver;
.source "StatusListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;-><init>(Landroid/app/Activity;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$12;->a:Lcom/xueqiu/android/community/a/ak;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$12;->a:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/a/ak;)V

    .line 228
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 229
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$12;->a:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/a/ak;)V

    .line 234
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 235
    return-void
.end method
