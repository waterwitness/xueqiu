.class final Lcom/xueqiu/android/community/a/a$1;
.super Landroid/database/DataSetObserver;
.source "CommentListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/a;->b()V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/a;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/xueqiu/android/community/a/a$1;->a:Lcom/xueqiu/android/community/a/a;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$1;->a:Lcom/xueqiu/android/community/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/a;->a(Lcom/xueqiu/android/community/a/a;)V

    .line 102
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 103
    return-void
.end method

.method public final onInvalidated()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/xueqiu/android/community/a/a$1;->a:Lcom/xueqiu/android/community/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/a;->a(Lcom/xueqiu/android/community/a/a;)V

    .line 108
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 109
    return-void
.end method
