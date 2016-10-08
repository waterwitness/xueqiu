.class final Lcom/xueqiu/android/community/RichTextActivity$1$1;
.super Lrx/i;
.source "RichTextActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/RichTextActivity$1;->send(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/i",
        "<",
        "Lcom/xueqiu/android/community/model/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/xueqiu/android/community/RichTextActivity$1;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/RichTextActivity$1;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/xueqiu/android/community/RichTextActivity$1$1;->b:Lcom/xueqiu/android/community/RichTextActivity$1;

    iput-object p2, p0, Lcom/xueqiu/android/community/RichTextActivity$1$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Lrx/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$1$1;->b:Lcom/xueqiu/android/community/RichTextActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RichTextActivity;->a(Lcom/xueqiu/android/community/RichTextActivity;)Lcom/xueqiu/android/community/widget/SNBTextEditor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->b()V

    .line 80
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$1$1;->b:Lcom/xueqiu/android/community/RichTextActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xueqiu/android/community/RichTextActivity;->j:Z

    .line 81
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 76
    check-cast p1, Lcom/xueqiu/android/community/model/Status;

    .line 1090
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xueqiu.android.action.statusPosted"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    const-string v1, "extra_task_id"

    iget-object v2, p0, Lcom/xueqiu/android/community/RichTextActivity$1$1;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1092
    const-string v1, "extra_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1093
    invoke-static {}, Lcom/xueqiu/android/base/b;->a()Lcom/xueqiu/android/base/b;

    invoke-static {}, Lcom/xueqiu/android/base/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/r;->a(Landroid/content/Context;)Landroid/support/v4/content/r;

    move-result-object v1

    .line 1094
    invoke-virtual {v1, v0}, Landroid/support/v4/content/r;->a(Landroid/content/Intent;)Z

    .line 1095
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$1$1;->b:Lcom/xueqiu/android/community/RichTextActivity$1;

    iget-object v0, v0, Lcom/xueqiu/android/community/RichTextActivity$1;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/RichTextActivity;->finish()V

    .line 76
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 86
    return-void
.end method
