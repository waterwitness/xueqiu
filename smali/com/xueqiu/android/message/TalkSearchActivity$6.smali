.class final Lcom/xueqiu/android/message/TalkSearchActivity$6;
.super Lcom/xueqiu/android/base/b/p;
.source "TalkSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/message/TalkSearchActivity;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/xueqiu/android/message/TalkSearchActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/TalkSearchActivity;Lcom/xueqiu/android/base/b/q;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->d:Lcom/xueqiu/android/message/TalkSearchActivity;

    iput-object p3, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->a:Ljava/util/List;

    iput-object p4, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->b:Ljava/util/List;

    iput-object p5, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->c:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/xueqiu/android/base/b/p;-><init>(Lcom/xueqiu/android/base/b/q;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/y;)V
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->d:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/u;->a(Ljava/util/List;)V

    .line 277
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->d:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/u;->notifyDataSetChanged()V

    .line 278
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 273
    check-cast p1, Ljava/util/ArrayList;

    .line 1282
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1283
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1284
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1285
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1287
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 1288
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1290
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/message/model/Talk;

    .line 1291
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->isGroup()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1292
    invoke-virtual {v0}, Lcom/xueqiu/android/message/model/Talk;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1296
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1297
    new-instance v1, Lcom/xueqiu/android/message/TalkSearchActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/xueqiu/android/message/TalkSearchActivity$6$1;-><init>(Lcom/xueqiu/android/message/TalkSearchActivity$6;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1303
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 1304
    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->a:Ljava/util/List;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Ljava/util/List;)Lcom/xueqiu/android/message/a/y;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->d:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/message/a/u;->a(Ljava/util/List;)V

    .line 1308
    iget-object v0, p0, Lcom/xueqiu/android/message/TalkSearchActivity$6;->d:Lcom/xueqiu/android/message/TalkSearchActivity;

    invoke-static {v0}, Lcom/xueqiu/android/message/TalkSearchActivity;->a(Lcom/xueqiu/android/message/TalkSearchActivity;)Lcom/xueqiu/android/message/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/message/a/u;->notifyDataSetChanged()V

    .line 273
    return-void
.end method
