.class public final Lcom/xueqiu/android/common/a/p$1;
.super Landroid/database/DataSetObserver;
.source "SeparatedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/a/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/a/p;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/common/a/p;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/xueqiu/android/common/a/p$1;->a:Lcom/xueqiu/android/common/a/p;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/xueqiu/android/common/a/p$1;->a:Lcom/xueqiu/android/common/a/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/p;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/xueqiu/android/common/a/p$1;->a:Lcom/xueqiu/android/common/a/p;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/a/p;->notifyDataSetInvalidated()V

    .line 31
    return-void
.end method
