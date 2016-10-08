.class final Lcom/xueqiu/android/message/a/a$2;
.super Ljava/lang/Thread;
.source "AlphabetIndexUserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/message/a/a;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/message/a/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/message/a/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    iput-object p2, p0, Lcom/xueqiu/android/message/a/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 472
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/a$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a/a;->a(Lcom/xueqiu/android/message/a/a;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->a(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/a;->b(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a/a;->a(Lcom/xueqiu/android/message/a/a;Ljava/util/List;)Ljava/util/List;

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->c(Lcom/xueqiu/android/message/a/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->c(Lcom/xueqiu/android/message/a/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_3

    .line 478
    :cond_1
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    iget-object v1, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/a;->a(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a/a;->b(Lcom/xueqiu/android/message/a/a;Ljava/util/List;)Ljava/util/List;

    .line 489
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 490
    new-instance v1, Lcom/xueqiu/android/message/a/a$2$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/message/a/a$2$1;-><init>(Lcom/xueqiu/android/message/a/a$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 497
    return-void

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/xueqiu/android/message/a/a;->b(Lcom/xueqiu/android/message/a/a;Ljava/util/List;)Ljava/util/List;

    .line 482
    iget-object v0, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v0}, Lcom/xueqiu/android/message/a/a;->a(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/model/User;

    .line 483
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a$2;->a:Ljava/lang/String;

    .line 1023
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v3

    .line 1024
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getPinyinScreenName()Ljava/lang/String;

    move-result-object v4

    .line 1025
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getRemark()Ljava/lang/String;

    move-result-object v5

    .line 1026
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getPinyinRemark()Ljava/lang/String;

    move-result-object v6

    .line 1027
    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 1029
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    if-eqz v4, :cond_5

    .line 1030
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_5
    if-eqz v5, :cond_6

    .line 1031
    invoke-virtual {v5, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    if-eqz v6, :cond_7

    .line 1032
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_7
    if-eqz v7, :cond_9

    .line 1033
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1034
    :cond_8
    const/4 v1, 0x1

    .line 483
    :goto_1
    if-eqz v1, :cond_4

    .line 484
    iget-object v1, p0, Lcom/xueqiu/android/message/a/a$2;->b:Lcom/xueqiu/android/message/a/a;

    invoke-static {v1}, Lcom/xueqiu/android/message/a/a;->b(Lcom/xueqiu/android/message/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1037
    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method
