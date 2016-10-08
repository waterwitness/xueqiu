.class final Lcom/xueqiu/android/common/widget/aj$4;
.super Ljava/lang/Object;
.source "ShareSheet.java"

# interfaces
.implements Lcom/xueqiu/android/common/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/common/widget/aj;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/common/widget/aj;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/common/widget/aj;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 2075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 435
    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 3075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 436
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 440
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 441
    const-string v1, "type"

    const-string v2, "\u96ea\u7403\u52a8\u6001"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 6075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 6125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 442
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 443
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 444
    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 4075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 438
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 5075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 438
    const v3, 0x7f070383

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 448
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 7075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 448
    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 8075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 449
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 453
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 454
    const-string v1, "type"

    const-string v2, "\u96ea\u7403\u804a\u5929"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 11075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 11125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 456
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 457
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 9075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 451
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 10075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 451
    const v3, 0x7f070384

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 12075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 461
    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 13075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 462
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 466
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 467
    const-string v1, "type"

    const-string v2, "\u5fae\u4fe1"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 15075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 15125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 468
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 469
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 470
    return-void

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 14075
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 474
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 16075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 474
    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 17075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 475
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 479
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 480
    const-string v1, "type"

    const-string v2, "\u670b\u53cb\u5708"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 19075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 19125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 481
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 20053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 482
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 483
    return-void

    .line 477
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 18075
    invoke-virtual {v0, v1}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 487
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 20075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 487
    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 21075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 488
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 492
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 493
    const-string v1, "type"

    const-string v2, "\u5fae\u535a"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 24075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 24125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 494
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 25053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 495
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 496
    return-void

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 22075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 490
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 23075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 490
    const v3, 0x7f070387

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final f()V
    .locals 4

    .prologue
    .line 500
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 25075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 500
    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 26075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 501
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 506
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 507
    const-string v1, "type"

    const-string v2, "QQ"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 29075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 29125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 508
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 30053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 509
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 510
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 27075
    iget-object v1, v0, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 503
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->f:Ljava/util/Map;

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 28075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->a:Landroid/app/Activity;

    .line 503
    const v3, 0x7f070382

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final g()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 30075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 514
    if-eqz v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 31075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 515
    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 519
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 520
    const-string v1, "type"

    const-string v2, "\u90ae\u4ef6"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 34075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 34125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 521
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 35053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 522
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 523
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    iget-object v1, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 32075
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 32109
    iget-object v1, v1, Lcom/xueqiu/android/common/widget/an;->c:Ljava/lang/String;

    .line 517
    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 33075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 33117
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->b:Ljava/lang/String;

    .line 517
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/widget/aj;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final h()V
    .locals 3

    .prologue
    .line 527
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 35075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 527
    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 36075
    iget-object v0, v0, Lcom/xueqiu/android/common/widget/aj;->c:Lcom/xueqiu/android/common/widget/am;

    .line 528
    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/xueqiu/android/common/widget/am;->b(I)V

    .line 532
    :goto_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v1, 0x3e8

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 533
    const-string v1, "type"

    const-string v2, "\u590d\u5236"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const-string v1, "url"

    iget-object v2, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 38075
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/aj;->b:Lcom/xueqiu/android/common/widget/an;

    .line 38125
    iget-object v2, v2, Lcom/xueqiu/android/common/widget/an;->d:Ljava/lang/String;

    .line 534
    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 39053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 535
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 536
    return-void

    .line 530
    :cond_0
    iget-object v0, p0, Lcom/xueqiu/android/common/widget/aj$4;->a:Lcom/xueqiu/android/common/widget/aj;

    .line 37075
    invoke-virtual {v0}, Lcom/xueqiu/android/common/widget/aj;->b()V

    goto :goto_0
.end method
