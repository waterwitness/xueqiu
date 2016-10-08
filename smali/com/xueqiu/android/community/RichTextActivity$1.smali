.class final Lcom/xueqiu/android/community/RichTextActivity$1;
.super Ljava/lang/Object;
.source "RichTextActivity.java"

# interfaces
.implements Lcom/xueqiu/android/community/widget/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/RichTextActivity;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/RichTextActivity;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RichTextActivity;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const v4, 0x7f040009

    .line 105
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const-class v2, Lcom/xueqiu/android/community/UserSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 107
    const-string v2, "extra_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 109
    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v0, v2, v4, v4}, Lcom/xueqiu/android/community/RichTextActivity;->a(Landroid/content/Intent;III)V

    .line 110
    return-void
.end method

.method public final b()V
    .locals 5

    .prologue
    const v4, 0x7f040009

    .line 114
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const-class v2, Lcom/xueqiu/android/common/search/StockSearchActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v2, "extra_view_color"

    const-string v3, "view_color_blue"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2, v4, v4}, Lcom/xueqiu/android/community/RichTextActivity;->a(Landroid/content/Intent;III)V

    .line 119
    return-void
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    .line 1146
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f070211

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/RichTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0703f6

    invoke-virtual {v0, v3}, Lcom/xueqiu/android/community/RichTextActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1147
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f070562

    .line 1148
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/RichTextActivity$4;

    invoke-direct {v3, v0}, Lcom/xueqiu/android/community/RichTextActivity$4;-><init>(Lcom/xueqiu/android/community/RichTextActivity;)V

    .line 1149
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1166
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 124
    return-void
.end method

.method public final send(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-static {}, Lcom/xueqiu/android/base/util/ap;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 68
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    .line 70
    invoke-static {}, Lcom/xueqiu/android/base/q;->a()Lcom/xueqiu/android/base/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xueqiu/android/base/q;->b()Lcom/xueqiu/android/base/b/ai;

    move-result-object v1

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    .line 68
    invoke-static/range {v0 .. v8}, Lcom/xueqiu/android/base/util/ap;->a(Landroid/content/Context;Lcom/xueqiu/android/base/b/ai;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/xueqiu/android/community/RichTextActivity$1$1;

    invoke-direct {v1, p0, v9}, Lcom/xueqiu/android/community/RichTextActivity$1$1;-><init>(Lcom/xueqiu/android/community/RichTextActivity$1;Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/i;)Lrx/j;

    .line 98
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 99
    const-string v1, "extra_task_id"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 100
    iget-object v1, p0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/xueqiu/android/community/RichTextActivity;->setResult(ILandroid/content/Intent;)V

    .line 101
    return-void
.end method
