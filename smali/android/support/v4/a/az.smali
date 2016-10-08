.class Landroid/support/v4/a/az;
.super Landroid/support/v4/a/bg;
.source "NotificationCompat.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 704
    invoke-direct {p0}, Landroid/support/v4/a/bg;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/a/av;)Landroid/app/Notification;
    .locals 25

    .prologue
    .line 707
    new-instance v1, Landroid/support/v4/a/bj;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/a/av;->a:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/support/v4/a/av;->B:Landroid/app/Notification;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/support/v4/a/av;->b:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/support/v4/a/av;->c:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/support/v4/a/av;->h:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/support/v4/a/av;->f:Landroid/widget/RemoteViews;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/support/v4/a/av;->i:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/support/v4/a/av;->d:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/support/v4/a/av;->e:Landroid/app/PendingIntent;

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/support/v4/a/av;->g:Landroid/graphics/Bitmap;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/support/v4/a/av;->o:I

    move-object/from16 v0, p1

    iget v13, v0, Landroid/support/v4/a/av;->p:I

    move-object/from16 v0, p1

    iget-boolean v14, v0, Landroid/support/v4/a/av;->q:Z

    move-object/from16 v0, p1

    iget-boolean v15, v0, Landroid/support/v4/a/av;->k:Z

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/a/av;->l:Z

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/support/v4/a/av;->j:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/av;->n:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/a/av;->v:Z

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/av;->C:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/av;->x:Landroid/os/Bundle;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/av;->r:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/support/v4/a/av;->s:Z

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/support/v4/a/av;->t:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-direct/range {v1 .. v24}, Landroid/support/v4/a/bj;-><init>(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/graphics/Bitmap;IIZZZILjava/lang/CharSequence;ZLjava/util/ArrayList;Landroid/os/Bundle;Ljava/lang/String;ZLjava/lang/String;)V

    .line 713
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/a/av;->u:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Landroid/support/v4/a/ar;->a(Landroid/support/v4/a/ap;Ljava/util/ArrayList;)V

    .line 714
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v4/a/av;->m:Landroid/support/v4/a/bh;

    invoke-static {v1, v2}, Landroid/support/v4/a/ar;->a(Landroid/support/v4/a/aq;Landroid/support/v4/a/bh;)V

    .line 1471
    invoke-interface {v1}, Landroid/support/v4/a/aq;->b()Landroid/app/Notification;

    move-result-object v1

    .line 715
    return-object v1
.end method
