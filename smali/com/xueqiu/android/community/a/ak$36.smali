.class final Lcom/xueqiu/android/community/a/ak$36;
.super Ljava/lang/Object;
.source "StatusListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/a/ak;->a(Landroid/view/View;Lcom/xueqiu/android/community/model/Status;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/model/Status;

.field final synthetic b:Lcom/xueqiu/android/community/a/ak;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/a/ak;Lcom/xueqiu/android/community/model/Status;)V
    .locals 0

    .prologue
    .line 514
    iput-object p1, p0, Lcom/xueqiu/android/community/a/ak$36;->b:Lcom/xueqiu/android/community/a/ak;

    iput-object p2, p0, Lcom/xueqiu/android/community/a/ak$36;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 517
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$36;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/Status;->getCommentsCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$36;->b:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$36;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ak;->a(Lcom/xueqiu/android/community/model/Status;)V

    .line 523
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$36;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$36;->b:Lcom/xueqiu/android/community/a/ak;

    invoke-static {v0}, Lcom/xueqiu/android/community/a/ak;->e(Lcom/xueqiu/android/community/a/ak;)Lcom/xueqiu/android/community/l;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$36;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/model/Status;->getStatusId()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/community/l;->b(J)V

    .line 526
    :cond_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/community/a/ak$36;->b:Lcom/xueqiu/android/community/a/ak;

    iget-object v1, p0, Lcom/xueqiu/android/community/a/ak$36;->a:Lcom/xueqiu/android/community/model/Status;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ak;->b(Lcom/xueqiu/android/community/model/Status;)V

    goto :goto_0
.end method
