.class final Landroid/support/v7/internal/widget/m;
.super Landroid/widget/BaseAdapter;
.source "ActivityChooserView.java"


# instance fields
.field a:Landroid/support/v7/internal/widget/g;

.field b:Z

.field final synthetic c:Landroid/support/v7/internal/widget/ActivityChooserView;

.field private d:I

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V
    .locals 1

    .prologue
    .line 616
    iput-object p1, p0, Landroid/support/v7/internal/widget/m;->c:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 630
    const/4 v0, 0x4

    iput v0, p0, Landroid/support/v7/internal/widget/m;->d:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/ActivityChooserView;B)V
    .locals 0

    .prologue
    .line 616
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/m;-><init>(Landroid/support/v7/internal/widget/ActivityChooserView;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 737
    iget v4, p0, Landroid/support/v7/internal/widget/m;->d:I

    .line 738
    const v1, 0x7fffffff

    iput v1, p0, Landroid/support/v7/internal/widget/m;->d:I

    .line 743
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 744
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 745
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/m;->getCount()I

    move-result v7

    move-object v1, v2

    move v3, v0

    .line 747
    :goto_0
    if-ge v0, v7, :cond_0

    .line 748
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/internal/widget/m;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 749
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 750
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_0
    iput v4, p0, Landroid/support/v7/internal/widget/m;->d:I

    .line 755
    return v3
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 759
    iget v0, p0, Landroid/support/v7/internal/widget/m;->d:I

    if-eq v0, p1, :cond_0

    .line 760
    iput p1, p0, Landroid/support/v7/internal/widget/m;->d:I

    .line 761
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/m;->notifyDataSetChanged()V

    .line 763
    :cond_0
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 770
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/m;->f:Z

    if-eq v0, p1, :cond_0

    .line 771
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/m;->f:Z

    .line 772
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/m;->notifyDataSetChanged()V

    .line 774
    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .prologue
    .line 794
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/m;->b:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/internal/widget/m;->e:Z

    if-eq v0, p2, :cond_1

    .line 796
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/internal/widget/m;->b:Z

    .line 797
    iput-boolean p2, p0, Landroid/support/v7/internal/widget/m;->e:Z

    .line 798
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/m;->notifyDataSetChanged()V

    .line 800
    :cond_1
    return-void
.end method

.method public final getCount()I
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/g;->a()I

    move-result v0

    .line 667
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/m;->b:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/g;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 668
    add-int/lit8 v0, v0, -0x1

    .line 670
    :cond_0
    iget v1, p0, Landroid/support/v7/internal/widget/m;->d:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 671
    iget-boolean v1, p0, Landroid/support/v7/internal/widget/m;->f:Z

    if-eqz v1, :cond_1

    .line 672
    add-int/lit8 v0, v0, 0x1

    .line 674
    :cond_1
    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/m;->getItemViewType(I)I

    move-result v0

    .line 679
    packed-switch v0, :pswitch_data_0

    .line 688
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 681
    :pswitch_0
    const/4 v0, 0x0

    .line 686
    :goto_0
    return-object v0

    .line 683
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/m;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/g;->b()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 684
    add-int/lit8 p1, p1, 0x1

    .line 686
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->a:Landroid/support/v7/internal/widget/g;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/g;->a(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto :goto_0

    .line 679
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 693
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/m;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/m;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    .line 653
    const/4 v0, 0x1

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 697
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/m;->getItemViewType(I)I

    move-result v0

    .line 698
    packed-switch v0, :pswitch_data_0

    .line 730
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 700
    :pswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 701
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->c:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/b/h;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 703
    invoke-virtual {p2, v3}, Landroid/view/View;->setId(I)V

    .line 704
    sget v0, Landroid/support/v7/b/f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 705
    iget-object v1, p0, Landroid/support/v7/internal/widget/m;->c:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Landroid/support/v7/b/i;->abc_activity_chooser_view_see_all:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :cond_1
    :goto_0
    return-object p2

    .line 710
    :pswitch_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Landroid/support/v7/b/f;->list_item:I

    if-eq v0, v1, :cond_3

    .line 711
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->c:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v7/b/h;->abc_activity_chooser_view_list_item:I

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 714
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/widget/m;->c:Landroid/support/v7/internal/widget/ActivityChooserView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActivityChooserView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 716
    sget v0, Landroid/support/v7/b/f;->icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 717
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/m;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 718
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 720
    sget v0, Landroid/support/v7/b/f;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 721
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x3

    return v0
.end method
