.class final Lcom/xueqiu/android/community/c/b$2;
.super Ljava/lang/Object;
.source "FinanceDataFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/c/b;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/xueqiu/android/community/c/b;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/c/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    iput-object p2, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/c/b;->g()Landroid/support/v4/a/k;

    move-result-object v1

    const-class v2, Lcom/xueqiu/android/common/WebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 100
    const-string v1, "extra_url_path"

    iget-object v2, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v1, "un_support_back"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c/b;->a(Landroid/content/Intent;)V

    .line 104
    const-string v0, ""

    .line 105
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/quarter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070525

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    invoke-static {v1}, Lcom/xueqiu/android/community/c/b;->a(Lcom/xueqiu/android/community/c/b;)Landroid/app/Application;

    move-result-object v1

    .line 1088
    invoke-static {v1, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 129
    return-void

    .line 107
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/historical"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070522

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/keyratios"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070524

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/ZCFZB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/balance"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 112
    :cond_4
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070520

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_5
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/GSLRB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/income"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 114
    :cond_6
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070523

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 115
    :cond_7
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/XJLLB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/cash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 116
    :cond_8
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070521

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :cond_9
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/screener"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 118
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f070526

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 119
    :cond_a
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/ZYCWZB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 120
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f07051f

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :cond_b
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/MRCWZB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 122
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f07051e

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :cond_c
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/DJCWZB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 124
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f07051c

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :cond_d
    iget-object v1, p0, Lcom/xueqiu/android/community/c/b$2;->a:Ljava/lang/String;

    const-string v2, "/GPSYLZB"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/xueqiu/android/community/c/b$2;->b:Lcom/xueqiu/android/community/c/b;

    const v1, 0x7f07051d

    invoke-virtual {v0, v1}, Lcom/xueqiu/android/community/c/b;->a(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method
