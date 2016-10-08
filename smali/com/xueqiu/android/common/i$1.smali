.class final Lcom/xueqiu/android/common/i$1;
.super Lcom/xueqiu/android/base/b/p;
.source "InterestedTopicFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/i;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/xueqiu/android/community/model/InterestTopic;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/i;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/i;Lcom/xueqiu/android/base/b/q;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 115
    invoke-static {}, Lcom/xueqiu/android/common/i;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onErrorResponse error = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/volley/y;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->a(Lcom/xueqiu/android/common/i;)Lcom/xueqiu/android/common/widget/FlowLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/FlowLayout;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->b(Lcom/xueqiu/android/common/i;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->c(Lcom/xueqiu/android/common/i;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->c(Lcom/xueqiu/android/common/i;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0134

    invoke-static {v1}, Lcom/xueqiu/android/base/r;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    return-void

    .line 115
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 112
    check-cast p1, Ljava/util/List;

    .line 1127
    invoke-static {}, Lcom/xueqiu/android/common/i;->u()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "onResponse::response = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->d(Lcom/xueqiu/android/common/i;)Z

    .line 1130
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0, p1}, Lcom/xueqiu/android/common/i;->a(Lcom/xueqiu/android/common/i;Ljava/util/List;)V

    .line 1131
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->e(Lcom/xueqiu/android/common/i;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/xueqiu/android/common/i$1;->a:Lcom/xueqiu/android/common/i;

    invoke-static {v0}, Lcom/xueqiu/android/common/i;->f(Lcom/xueqiu/android/common/i;)V

    .line 112
    :cond_0
    return-void

    .line 1127
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
