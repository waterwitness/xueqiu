.class final Landroid/support/v4/a/be;
.super Landroid/support/v4/a/bb;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Landroid/support/v4/a/bb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/a/av;)Landroid/app/Notification;
    .locals 14

    .prologue
    .line 580
    new-instance v0, Landroid/support/v4/a/bq;

    iget-object v1, p1, Landroid/support/v4/a/av;->a:Landroid/content/Context;

    iget-object v2, p1, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    iget-object v3, p1, Landroid/support/v4/a/av;->b:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/a/av;->c:Ljava/lang/CharSequence;

    iget-object v5, p1, Landroid/support/v4/a/av;->h:Ljava/lang/CharSequence;

    iget-object v6, p1, Landroid/support/v4/a/av;->f:Landroid/widget/RemoteViews;

    iget v7, p1, Landroid/support/v4/a/av;->i:I

    iget-object v8, p1, Landroid/support/v4/a/av;->d:Landroid/app/PendingIntent;

    iget-object v9, p1, Landroid/support/v4/a/av;->e:Landroid/app/PendingIntent;

    iget-object v10, p1, Landroid/support/v4/a/av;->g:Landroid/graphics/Bitmap;

    iget v11, p1, Landroid/support/v4/a/av;->o:I

    iget v12, p1, Landroid/support/v4/a/av;->p:I

    iget-boolean v13, p1, Landroid/support/v4/a/av;->q:Z

    invoke-direct/range {v0 .. v13}, Landroid/support/v4/a/bq;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZ)V

    .line 1471
    invoke-interface {v0}, Landroid/support/v4/a/aq;->b()Landroid/app/Notification;

    move-result-object v0

    .line 585
    return-object v0
.end method
