.class final Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;
.super Ljava/lang/Object;
.source "CubeFlyOrderActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeFlyOrderActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/16 v4, 0x57a

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 178
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const v0, 0x7f070429

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(I)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    const/4 v0, 0x0

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 230
    :goto_1
    :pswitch_0
    if-eqz v0, :cond_0

    .line 231
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->l(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 232
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    goto :goto_0

    .line 185
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    .line 191
    :goto_2
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v4, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 192
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->c(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 193
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->d(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    const v1, 0x7f0704f9

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/b;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->e(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Landroid/widget/Button;ZZ)V

    .line 197
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->f(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v3, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Landroid/widget/Button;ZZ)V

    .line 198
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    .line 199
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->g(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 200
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->d(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 201
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto :goto_1

    .line 204
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->f(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Landroid/widget/Button;ZZ)V

    .line 205
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->e(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v3, v3}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->a(Landroid/widget/Button;ZZ)V

    .line 206
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->b(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    .line 207
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->g(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 208
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->d(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    .line 209
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v4, v1}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    goto/16 :goto_1

    .line 212
    :pswitch_4
    const-string v1, "/law/cube-order"

    invoke-static {v1}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1, v2}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_1

    .line 215
    :pswitch_5
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1, v2}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->c(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;Z)Z

    .line 216
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->h(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    goto/16 :goto_1

    .line 219
    :pswitch_6
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->i(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    goto/16 :goto_1

    .line 222
    :pswitch_7
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->j(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    goto/16 :goto_1

    .line 225
    :pswitch_8
    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeFlyOrderActivity$1;->a:Lcom/xueqiu/android/cube/CubeFlyOrderActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeFlyOrderActivity;->k(Lcom/xueqiu/android/cube/CubeFlyOrderActivity;)V

    goto/16 :goto_1

    .line 183
    :pswitch_data_0
    .packed-switch 0x7f0e0392
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
