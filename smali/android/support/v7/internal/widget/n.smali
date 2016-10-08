.class final Landroid/support/v7/internal/widget/n;
.super Ljava/lang/Object;
.source "ActivityChooserView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field final synthetic a:Landroid/support/v7/internal/widget/ActivityChooserView;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 0

    .prologue
    .line 531
    iput-object p1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V
    .locals 0

    .prologue
    .line 531
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/n;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 568
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 569
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v0

    .line 4766
    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/g;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 570
    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v1

    .line 4789
    iget-object v1, v1, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    .line 570
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/g;->a(Landroid/content/pm/ResolveInfo;)I

    move-result v0

    .line 571
    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v1

    .line 5789
    iget-object v1, v1, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    .line 571
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/g;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 572
    if-eqz v0, :cond_0

    .line 573
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 574
    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 578
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->f(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 577
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 578
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    goto :goto_0

    .line 580
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public final onDismiss()V
    .locals 2

    .prologue
    .line 600
    .line 6607
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6608
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->h(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/PopupWindow$OnDismissListener;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 601
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/j;

    if-eqz v0, :cond_1

    .line 602
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v0, v0, Landroid/support/v7/internal/widget/ActivityChooserView;->a:Landroid/support/v4/view/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/j;->a(Z)V

    .line 604
    :cond_1
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/m;

    .line 537
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/m;->getItemViewType(I)I

    move-result v0

    .line 538
    packed-switch v0, :pswitch_data_0

    .line 561
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 540
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 543
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a()Z

    .line 544
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->d(Landroid/support/v7/internal/widget/ActivityChooserView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 546
    if-lez p3, :cond_0

    .line 547
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v0

    .line 1789
    iget-object v2, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    .line 2535
    iget-object v3, v2, Landroid/support/v7/internal/widget/g;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 2536
    :try_start_0
    invoke-virtual {v2}, Landroid/support/v7/internal/widget/g;->d()V

    .line 2538
    iget-object v0, v2, Landroid/support/v7/internal/widget/g;->b:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/h;

    .line 2539
    iget-object v1, v2, Landroid/support/v7/internal/widget/g;->b:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/internal/widget/h;

    .line 2542
    if-eqz v1, :cond_1

    .line 2544
    iget v1, v1, Landroid/support/v7/internal/widget/h;->b:F

    iget v4, v0, Landroid/support/v7/internal/widget/h;->b:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x40a00000    # 5.0f

    add-float/2addr v1, v4

    .line 2550
    :goto_1
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Landroid/support/v7/internal/widget/h;->a:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/support/v7/internal/widget/h;->a:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    new-instance v0, Landroid/support/v7/internal/widget/j;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v0, v4, v6, v7, v1}, Landroid/support/v7/internal/widget/j;-><init>(Landroid/content/ComponentName;JF)V

    .line 2555
    invoke-virtual {v2, v0}, Landroid/support/v7/internal/widget/g;->a(Landroid/support/v7/internal/widget/j;)Z

    .line 2556
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2547
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    .line 552
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v0

    .line 2803
    iget-boolean v0, v0, Landroid/support/v7/internal/widget/m;->b:Z

    .line 552
    if-eqz v0, :cond_3

    .line 553
    :goto_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v0

    .line 3789
    iget-object v0, v0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    .line 553
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/widget/g;->b(I)Landroid/content/Intent;

    move-result-object v0

    .line 554
    if-eqz v0, :cond_0

    .line 555
    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 556
    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 552
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 587
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->e(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 588
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;)Landroid/support/v7/internal/widget/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/m;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 589
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v0, v2}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;Z)Z

    .line 590
    iget-object v0, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    iget-object v1, p0, Landroid/support/v7/internal/widget/n;->a:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-static {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->g(Landroid/support/v7/internal/widget/ActivityChooserView;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->a(Landroid/support/v7/internal/widget/ActivityChooserView;I)V

    .line 595
    :cond_0
    return v2

    .line 593
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
