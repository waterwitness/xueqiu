.class final Lcom/xueqiu/android/tactic/TacticDetailActivity$5;
.super Ljava/lang/Object;
.source "TacticDetailActivity.java"

# interfaces
.implements Lcom/xueqiu/android/common/widget/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/tactic/TacticDetailActivity;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/tactic/TacticDetailActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/tactic/TacticDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$5;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    iput-object p2, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/xueqiu/android/common/widget/f;I)V
    .locals 3

    .prologue
    .line 535
    packed-switch p2, :pswitch_data_0

    .line 550
    :goto_0
    return-void

    .line 538
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$5;->a:Ljava/lang/String;

    .line 539
    invoke-static {v0}, Lcom/xueqiu/android/base/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/broker/proxy?url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xueqiu/android/base/util/az;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xueqiu/android/base/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    :cond_0
    iget-object v1, p0, Lcom/xueqiu/android/tactic/TacticDetailActivity$5;->b:Lcom/xueqiu/android/tactic/TacticDetailActivity;

    invoke-static {v0, v1}, Lcom/xueqiu/android/common/q;->a(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 544
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xueqiu/android/base/util/aa;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
