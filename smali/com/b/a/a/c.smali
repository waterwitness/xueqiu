.class public final Lcom/b/a/a/c;
.super Ljava/lang/Object;
.source "Handler_Ui.java"


# static fields
.field private static a:Landroid/app/Dialog;

.field private static b:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-object v0, Lcom/b/a/a/c;->a:Landroid/app/Dialog;

    .line 31
    sput-object v0, Lcom/b/a/a/c;->b:Landroid/widget/Toast;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/b/a/a/c;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/b/a/a/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/b/a/a/c;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 84
    const/4 v0, 0x0

    sput-object v0, Lcom/b/a/a/c;->a:Landroid/app/Dialog;

    .line 86
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 39
    sget-object v0, Lcom/b/a/a/c;->b:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 40
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->b:Landroid/widget/Toast;

    .line 44
    :goto_0
    sget-object v0, Lcom/b/a/a/c;->b:Landroid/widget/Toast;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 45
    sget-object v0, Lcom/b/a/a/c;->b:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    return-void

    .line 42
    :cond_0
    sget-object v0, Lcom/b/a/a/c;->b:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
