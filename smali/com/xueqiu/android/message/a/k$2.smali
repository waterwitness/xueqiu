.class final Lcom/xueqiu/android/message/a/k$2;
.super Ljava/lang/Object;
.source "GroupApplyAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/k;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/message/model/Apply;

.field final synthetic b:Lcom/xueqiu/android/message/a/k;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/k;Lcom/xueqiu/android/message/model/Apply;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/xueqiu/android/message/a/k$2;->b:Lcom/xueqiu/android/message/a/k;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/k$2;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 91
    const-string v0, "GroupApplyAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "approve : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xueqiu/android/message/a/k$2;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-virtual {v2}, Lcom/xueqiu/android/message/model/Apply;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/xueqiu/android/message/a/k$2;->b:Lcom/xueqiu/android/message/a/k;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/k;->a(Lcom/xueqiu/android/message/a/k;)Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xueqiu/android/message/a/k$2;->b:Lcom/xueqiu/android/message/a/k;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/k;->a(Lcom/xueqiu/android/message/a/k;)Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/a/k$2;->a:Lcom/xueqiu/android/message/model/Apply;

    invoke-virtual {v1}, Lcom/xueqiu/android/message/model/Apply;->getId()J

    move-result-wide v2

    new-instance v1, Lcom/xueqiu/android/message/a/k$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a/k$2$1;-><init>(Lcom/xueqiu/android/message/a/k$2;)V

    .line 3287
    iget-object v0, v0, Lcom/xueqiu/android/base/b/ai;->k:Lcom/xueqiu/android/base/b/d;

    invoke-virtual {v0, v2, v3, v1}, Lcom/xueqiu/android/base/b/d;->c(JLcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    .line 116
    :cond_0
    return-void
.end method
