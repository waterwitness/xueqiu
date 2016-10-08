.class final Lcom/xueqiu/android/cube/CubeActivity$10;
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
    .line 792
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v0, 0x0

    const/16 v8, 0x579

    const/4 v1, 0x1

    .line 795
    const/high16 v2, 0x7f0e0000

    if-ne p1, v2, :cond_1

    .line 796
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->q(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 797
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x14

    invoke-direct {v0, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 798
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 799
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 856
    :cond_0
    :goto_0
    return v0

    .line 801
    :cond_1
    const v2, 0x7f0e0005

    if-ne p1, v2, :cond_4

    .line 1069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 1186
    iget-boolean v2, v2, Lcom/xueqiu/android/base/t;->d:Z

    .line 802
    if-eqz v2, :cond_2

    .line 803
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 2152
    invoke-static {v2, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 814
    :goto_1
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xd

    invoke-direct {v0, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 815
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 816
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 817
    goto :goto_0

    .line 805
    :cond_2
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    const-class v4, Lcom/xueqiu/android/community/WriteStatusActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 806
    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->isSellFlag()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getLastBuyRbGid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 807
    const-string v3, "extra_module_id"

    const-string v4, "A7VMfHQzCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 809
    :cond_3
    const-string v3, "extra_write_type"

    invoke-virtual {v2, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 810
    const-string v3, "extra_auto_add_text"

    const-string v4, "$%s(%s)$ @%s "

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 811
    invoke-static {v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    iget-object v6, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v6}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/cube/model/Cube;->getOwner()Lcom/xueqiu/android/community/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xueqiu/android/community/model/User;->getScreenName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 812
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-virtual {v0, v2, v9}, Lcom/xueqiu/android/cube/CubeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 818
    :cond_4
    const v2, 0x7f0e0015

    if-ne p1, v2, :cond_6

    .line 820
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

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

    .line 820
    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 821
    const/4 v0, 0x5

    .line 825
    :goto_2
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2, v0}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;I)V

    .line 826
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xe

    invoke-direct {v0, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 827
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 4053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 828
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 829
    goto/16 :goto_0

    .line 823
    :cond_5
    const/4 v0, 0x4

    goto :goto_2

    .line 830
    :cond_6
    const v2, 0x7f0e0009

    if-ne p1, v2, :cond_7

    .line 831
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeActivity;->t(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 832
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x10

    invoke-direct {v0, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 5053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 833
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 834
    goto/16 :goto_0

    .line 835
    :cond_7
    const v2, 0x7f0e000c

    if-ne p1, v2, :cond_9

    .line 5069
    invoke-static {}, Lcom/xueqiu/android/base/u;->a()Lcom/xueqiu/android/base/t;

    move-result-object v2

    .line 5186
    iget-boolean v2, v2, Lcom/xueqiu/android/base/t;->d:Z

    .line 836
    if-eqz v2, :cond_8

    .line 837
    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    .line 6152
    invoke-static {v2, v0}, Lcom/xueqiu/android/base/t;->a(Landroid/app/Activity;Z)V

    .line 841
    :goto_3
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0xf

    invoke-direct {v0, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 842
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 7053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 843
    invoke-virtual {v2, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    move v0, v1

    .line 844
    goto/16 :goto_0

    .line 839
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/base/util/l;->a(Lcom/xueqiu/android/common/b;ILjava/lang/String;)V

    goto :goto_3

    .line 845
    :cond_9
    const v1, 0x7f0e0011

    if-ne p1, v1, :cond_a

    .line 846
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->y(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 847
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x15

    invoke-direct {v1, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 848
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 8053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 849
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0

    .line 850
    :cond_a
    const v1, 0x7f0e0004

    if-ne p1, v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeActivity;->z(Lcom/xueqiu/android/cube/CubeActivity;)V

    .line 852
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x11

    invoke-direct {v1, v8, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 853
    const-string v2, "symbol"

    iget-object v3, p0, Lcom/xueqiu/android/cube/CubeActivity$10;->a:Lcom/xueqiu/android/cube/CubeActivity;

    invoke-static {v3}, Lcom/xueqiu/android/cube/CubeActivity;->a(Lcom/xueqiu/android/cube/CubeActivity;)Lcom/xueqiu/android/cube/model/Cube;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xueqiu/android/cube/model/Cube;->getSymbol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 9053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v2

    .line 854
    invoke-virtual {v2, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto/16 :goto_0
.end method
