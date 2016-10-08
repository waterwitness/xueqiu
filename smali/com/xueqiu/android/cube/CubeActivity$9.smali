.class final Lcom/xueqiu/android/cube/CubeActivity$9;
.super Ljava/lang/Object;
.source "CubeActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeActivity;)V
    .locals 0

    .prologue
    .line 676
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 679
    const v2, 0x7f0e0011

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getClosedAt()Ljava/util/Date;

    move-result-object v2

    if-nez v2, :cond_1

    .line 680
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 681
    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/util/as;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xueqiu/android/base/storage/prefs/UserPrefs;->getTradeAccount(Ljava/lang/String;)Lcom/xueqiu/android/trade/model/TradeAccount;

    move-result-object v3

    const-string v4, "BUY"

    .line 680
    invoke-static {v2, v3, v4}, Lcom/xueqiu/android/trade/OrderFullActivity;->a(Landroid/content/Context;Lcom/xueqiu/android/trade/model/TradeAccount;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xueqiu/android/cube/CubeActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v1

    .line 734
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    const v2, 0x7f0e0005

    if-ne p1, v2, :cond_4

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 1186
    iget-boolean v2, v2, Lcom/xueqiu/android/base/t;->d:Z

    .line 685
    if-eqz v2, :cond_2

    .line 686
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 2152
    invoke-static {v2, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    :goto_1
    move v0, v1

    .line 700
    goto :goto_0

    .line 688
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const-class v4, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 689
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getLastBuyRbGid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 690
    const-string v3, "extra_module_id"

    const-string v4, "A7VMfHQzCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    :cond_3
    const-string v3, "extra_write_type"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 693
    const-string v3, "extra_auto_add_text"

    const-string v4, "$%s(%s)$ @%s "

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 694
    invoke-static {v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0, v2, v8}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 701
    :cond_4
    const v2, 0x7f0e0015

    if-ne p1, v2, :cond_6

    .line 703
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/model/User;->getUserId()J

    move-result-wide v2

    .line 3069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    .line 3077
    invoke-static {}, Lcom/xueqiu/android/base/storage/prefs/UserLogonDataPrefs;->getLogonUserId()J

    move-result-wide v4

    .line 703
    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 704
    const/4 v0, 0x5

    .line 708
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;I)V

    move v0, v1

    .line 712
    goto/16 :goto_0

    .line 706
    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    .line 713
    :cond_6
    const v2, 0x7f0e0009

    if-ne p1, v2, :cond_7

    .line 714
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->t(Lcom/xueqiu/android/cube/CubeActivity;)V

    move v0, v1

    .line 717
    goto/16 :goto_0

    .line 718
    :cond_7
    const v2, 0x7f0e000c

    if-ne p1, v2, :cond_9

    .line 4069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 4186
    iget-boolean v2, v2, Lcom/xueqiu/android/base/t;->d:Z

    .line 719
    if-eqz v2, :cond_8

    .line 720
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 5152
    invoke-static {v2, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    :goto_3
    move v0, v1

    .line 727
    goto/16 :goto_0

    .line 722
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V

    goto :goto_3

    .line 728
    :cond_9
    const v1, 0x7f0e0004

    if-ne p1, v1, :cond_0

    .line 729
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$9;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->x(Lcom/xueqiu/android/cube/CubeActivity;)V

    goto/16 :goto_0
.end method
