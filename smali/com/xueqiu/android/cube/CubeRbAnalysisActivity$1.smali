.class final Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;
.super Ljava/lang/Object;
.source "CubeRbAnalysisActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/16 v3, 0x57e

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :pswitch_0
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 183
    :goto_0
    const-string v1, "symbol"

    iget-object v2, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->g(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/xueqiu/android/base/i;->a()Lcom/xueqiu/android/base/h;

    move-result-object v1

    .line 184
    invoke-virtual {v1, v0}, Lcom/xueqiu/android/base/h;->a(Lcom/xueqiu/android/common/model/SNBEvent;)V

    .line 185
    return-void

    .line 152
    :pswitch_1
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 153
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 154
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->c(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V

    .line 155
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 156
    const-string v1, "period"

    const-string v2, "3\u4e2a\u6708"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 160
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->c(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V

    .line 162
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v3, v2}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 163
    const-string v1, "period"

    const-string v2, "1\u5e74"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :pswitch_3
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->d(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 167
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->e(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 168
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->f(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V

    .line 169
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 170
    const-string v1, "period"

    const-string v2, "3\u4e2a\u6708"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 173
    :pswitch_4
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->d(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 174
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v0}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->e(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->a(Landroid/widget/Button;ZZ)V

    .line 175
    iget-object v0, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    iget-object v1, p0, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity$1;->a:Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;

    invoke-static {v1}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->f(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;)Lcom/google/gson/JsonObject;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;->b(Lcom/xueqiu/android/cube/CubeRbAnalysisActivity;Lcom/google/gson/JsonObject;I)V

    .line 176
    new-instance v0, Lcom/xueqiu/android/common/model/SNBEvent;

    invoke-direct {v0, v3, v4}, Lcom/xueqiu/android/common/model/SNBEvent;-><init>(II)V

    .line 177
    const-string v1, "period"

    const-string v2, "1\u5e74"

    invoke-virtual {v0, v1, v2}, Lcom/xueqiu/android/common/model/SNBEvent;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e0429
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
