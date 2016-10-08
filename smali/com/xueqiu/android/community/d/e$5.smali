.class final Lcom/xueqiu/android/community/d/e$5;
.super Ljava/lang/Object;
.source "UserProfilePresenter.java"

# interfaces
.implements Lrx/c/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/d/e;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/j",
        "<",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/SimpleFund;",
        ">;",
        "Lcom/xueqiu/android/common/model/PagedList",
        "<",
        "Lcom/xueqiu/android/community/model/Question;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;",
        "Lcom/google/gson/JsonObject;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/d/e;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/d/e;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 120
    check-cast p1, Ljava/util/ArrayList;

    check-cast p2, Lcom/xueqiu/android/common/model/PagedList;

    check-cast p3, Ljava/util/ArrayList;

    check-cast p4, Ljava/util/ArrayList;

    check-cast p5, Lcom/google/gson/JsonObject;

    .line 1124
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->c(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsBoolean()Z

    move-result v0

    .line 1126
    iget-object v1, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v1}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xueqiu/android/community/b/o;->b(Z)V

    .line 1130
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->d(Lcom/xueqiu/android/community/d/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1132
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xueqiu/android/community/b/o;->a(Ljava/util/ArrayList;)V

    .line 1133
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/xueqiu/android/community/b/o;->a(Lcom/xueqiu/android/common/model/PagedList;)V

    .line 1134
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/xueqiu/android/community/b/o;->b(Ljava/util/ArrayList;)V

    .line 1135
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/xueqiu/android/community/b/o;->k()V

    .line 1136
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->a(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/community/b/o;

    move-result-object v0

    invoke-interface {v0, p4}, Lcom/xueqiu/android/community/b/o;->c(Ljava/util/ArrayList;)V

    .line 1138
    iget-object v0, p0, Lcom/xueqiu/android/community/d/e$5;->a:Lcom/xueqiu/android/community/d/e;

    invoke-static {v0}, Lcom/xueqiu/android/community/d/e;->b(Lcom/xueqiu/android/community/d/e;)Lcom/xueqiu/android/common/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/common/b;->i()V

    .line 1139
    const/4 v0, 0x0

    .line 120
    return-object v0
.end method
