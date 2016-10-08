.class final Lcom/xueqiu/android/trade/d/a$14;
.super Ljava/lang/Object;
.source "OrderFragmentPresenter.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/trade/d/a;->k()V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/trade/d/a;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/trade/d/a;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1156
    iput-object p1, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    iput-object p2, p0, Lcom/xueqiu/android/trade/d/a$14;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 9

    .prologue
    .line 1160
    packed-switch p2, :pswitch_data_0

    .line 1175
    :pswitch_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    .line 6069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1175
    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    .line 7069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1176
    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->m()V

    .line 1178
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/d/a;->m()V

    .line 1181
    :goto_1
    return-void

    .line 1162
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    .line 2069
    iget-boolean v0, v0, Lcom/xueqiu/android/trade/d/a;->g:Z

    .line 1162
    if-nez v0, :cond_1

    .line 3053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v0

    .line 1163
    new-instance v1, Lcom/xueqiu/android/common/model/SNBEvent;

    const/16 v2, 0x5ed

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 1165
    :cond_1
    iget-object v7, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    iget-object v2, p0, Lcom/xueqiu/android/trade/d/a$14;->a:Ljava/lang/String;

    .line 3191
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v0

    const/4 v1, 0x0

    const-string v3, "yO51t0AH4X"

    const-string v4, "stock"

    iget-object v5, v7, Lcom/xueqiu/android/trade/d/a;->e:Ljava/lang/String;

    new-instance v6, Lcom/xueqiu/android/trade/d/a$15;

    iget-object v8, v7, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-direct {v6, v7, v8}, Lcom/xueqiu/android/trade/d/a$15;-><init>(Lcom/xueqiu/android/trade/d/a;Lcom/xueqiu/android/base/b/q;)V

    invoke-virtual/range {v0 .. v6}, Lcom/xueqiu/android/base/b/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/xueqiu/android/base/b/p;)Lcom/xueqiu/android/base/b/x;

    move-result-object v0

    .line 3206
    iget-object v1, v7, Lcom/xueqiu/android/trade/d/a;->a:Lcom/xueqiu/android/trade/c/e;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/trade/c/e;->a(Lcom/xueqiu/android/base/b/x;)V

    goto :goto_0

    .line 1169
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    .line 4069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1169
    instance-of v0, v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    if-eqz v0, :cond_2

    .line 1170
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    .line 5069
    iget-object v0, v0, Lcom/xueqiu/android/trade/d/a;->c:Lcom/xueqiu/android/common/b;

    .line 1170
    check-cast v0, Lcom/xueqiu/android/trade/OrderFullActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/OrderFullActivity;->m()V

    .line 1172
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/trade/d/a$14;->b:Lcom/xueqiu/android/trade/d/a;

    invoke-virtual {v0}, Lcom/xueqiu/android/trade/d/a;->m()V

    goto :goto_1

    .line 1160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
