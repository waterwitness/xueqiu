.class final Lcom/xueqiu/android/community/WriteStatusActivity$39;
.super Lcom/xueqiu/android/base/b/p;
.source "WriteStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/WriteStatusActivity;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xueqiu/android/base/b/p",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/User;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/WriteStatusActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/WriteStatusActivity;)V
    .locals 0

    .prologue
    .line 2060
    iput-object p1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {p0}, Lcom/xueqiu/android/base/b/p;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 2063
    invoke-static {p1}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    .line 2065
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2066
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2068
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->U(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 2069
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 2070
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 2060
    check-cast p1, Ljava/util/ArrayList;

    .line 3074
    if-eqz p1, :cond_2

    .line 3075
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3076
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 3077
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3078
    const/4 v4, 0x2

    invoke-static {v3, v0, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->a(Ljava/util/Map;Lcom/xueqiu/android/community/model/User;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3081
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3082
    const-string v2, "type_key"

    const-string v3, "0"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3083
    const-string v2, "title_key"

    iget-object v3, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    const v4, 0x7f0700b0

    invoke-virtual {v3, v4}, Lcom/xueqiu/android/community/WriteStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3084
    iget-object v2, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3086
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3087
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->U(Lcom/xueqiu/android/community/WriteStatusActivity;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 3088
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->V(Lcom/xueqiu/android/community/WriteStatusActivity;)Lcom/xueqiu/android/community/a/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/a/ah;->a(Ljava/util/List;)V

    .line 3089
    :cond_1
    :goto_1
    return-void

    .line 3091
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 3092
    iget-object v0, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/WriteStatusActivity$39;->a:Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/WriteStatusActivity;->E(Lcom/xueqiu/android/community/WriteStatusActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method
