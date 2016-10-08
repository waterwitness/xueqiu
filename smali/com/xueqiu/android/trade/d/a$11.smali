.class final Lcom/xueqiu/android/trade/d/a$11;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/trade/d/a;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;)V
    .locals 0

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$11;->a:Lcom/xueqiu/android/trade/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1078
    packed-switch p2, :pswitch_data_0

    .line 1087
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$11;->a:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1087
    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    .line 1090
    :goto_1
    return-void

    .line 1080
    :pswitch_1
    const-string v0, "/broker/gem-sign"

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/trade/d/a$11;->a:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-object v1, v1, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1080
    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 1084
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$11;->a:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->b:Lcom/xueqiu/android/trade/b/c;

    .line 1084
    invoke-interface {v0, v2, v3}, Lcom/xueqiu/android/trade/b/c;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 1078
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
