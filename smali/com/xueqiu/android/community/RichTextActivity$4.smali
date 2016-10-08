.class final Lcom/xueqiu/android/community/RichTextActivity$4;
.super Ljava/lang/Object;
.source "RichTextActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 149
    iput-object p1, p0, Lcom/xueqiu/android/community/RichTextActivity$4;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/xueqiu/android/community/RichTextActivity;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 156
    const-string v0, "RichText"

    const-string v1, "mkdir failed"

    invoke-static {v0, v1}, Lcom/xueqiu/android/base/util/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-nez p2, :cond_2

    .line 161
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$4;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RichTextActivity;->b(Lcom/xueqiu/android/community/RichTextActivity;)V

    goto :goto_0

    .line 162
    :cond_2
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/xueqiu/android/community/RichTextActivity$4;->a:Lcom/xueqiu/android/community/RichTextActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/RichTextActivity;->c(Lcom/xueqiu/android/community/RichTextActivity;)V

    goto :goto_0
.end method
