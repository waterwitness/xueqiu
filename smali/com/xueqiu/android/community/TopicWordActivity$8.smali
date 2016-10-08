.class final Lcom/xueqiu/android/community/TopicWordActivity$8;
.super Ljava/lang/Object;
.source "TopicWordActivity.java"

# interfaces
.implements Lcom/xueqiu/android/community/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/TopicWordActivity;->b(I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/TopicWordActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/TopicWordActivity;)V
    .locals 0

    .prologue
    .line 445
    iput-object p1, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 3

    .prologue
    .line 466
    const-string v0, "solory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendRefreshRequest  erro  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->q:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 468
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicWordActivity;->c(Lcom/xueqiu/android/community/TopicWordActivity;)V

    .line 469
    return-void
.end method

.method public final a(Lcom/xueqiu/android/common/model/PagedGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xueqiu/android/common/model/PagedGroup",
            "<",
            "Lcom/xueqiu/android/community/model/Status;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0, p1}, Lcom/xueqiu/android/community/a/ak;->a(Ljava/util/ArrayList;)V

    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->w:Lcom/xueqiu/android/community/a/ak;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/a/ak;->notifyDataSetChanged()V

    .line 450
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->q:Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/ptr/PullToRefreshListView;->f()V

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/TopicWordActivity;->c(Lcom/xueqiu/android/community/TopicWordActivity;)V

    .line 453
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/xueqiu/android/common/model/PagedGroup;->mContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 455
    invoke-static {}, Lcom/xueqiu/android/base/util/m;->a()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p1, Lcom/xueqiu/android/common/model/PagedGroup;->mContent:Ljava/lang/String;

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonObject;

    .line 457
    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "content"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, v1, Lcom/xueqiu/android/community/TopicWordActivity;->u:Ljava/lang/String;

    .line 459
    iget-object v0, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v0, v0, Lcom/xueqiu/android/community/TopicWordActivity;->v:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xueqiu/android/community/TopicWordActivity$8;->a:Lcom/xueqiu/android/community/TopicWordActivity;

    iget-object v1, v1, Lcom/xueqiu/android/community/TopicWordActivity;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    :cond_0
    return-void

    .line 457
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method
