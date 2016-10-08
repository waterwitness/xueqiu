.class final Lcom/xueqiu/android/community/p;
.super Landroid/widget/BaseAdapter;
.source "UpdateUserInfoActivity.java"


# instance fields
.field a:[Ljava/lang/String;

.field b:Landroid/view/LayoutInflater;

.field final synthetic c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/UpdateUserInfoActivity;[Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 949
    iput-object p1, p0, Lcom/xueqiu/android/community/p;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 950
    iput-object p2, p0, Lcom/xueqiu/android/community/p;->a:[Ljava/lang/String;

    .line 951
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/p;->b:Landroid/view/LayoutInflater;

    .line 952
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 956
    iget-object v0, p0, Lcom/xueqiu/android/community/p;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/p;->a:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/xueqiu/android/community/p;->a:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/p;->a:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2

    .prologue
    .line 966
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 971
    if-nez p2, :cond_0

    .line 972
    iget-object v0, p0, Lcom/xueqiu/android/community/p;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030072

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 973
    new-instance v1, Lcom/xueqiu/android/community/q;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/q;-><init>(Lcom/xueqiu/android/community/p;)V

    .line 974
    iput-object p2, v1, Lcom/xueqiu/android/community/q;->a:Landroid/view/View;

    .line 975
    const v0, 0x7f0e01f4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/xueqiu/android/community/q;->b:Landroid/widget/TextView;

    .line 976
    const v0, 0x7f0e01f5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, v1, Lcom/xueqiu/android/community/q;->c:Landroid/widget/RadioButton;

    .line 977
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 980
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xueqiu/android/community/q;

    .line 982
    invoke-virtual {p0, p1}, Lcom/xueqiu/android/community/p;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 983
    iget-object v2, v0, Lcom/xueqiu/android/community/q;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    iget-object v2, p0, Lcom/xueqiu/android/community/p;->c:Lcom/xueqiu/android/community/UpdateUserInfoActivity;

    invoke-static {v2}, Lcom/xueqiu/android/community/UpdateUserInfoActivity;->i(Lcom/xueqiu/android/community/UpdateUserInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 986
    iget-object v2, v0, Lcom/xueqiu/android/community/q;->c:Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 991
    :goto_0
    iget-object v2, v0, Lcom/xueqiu/android/community/q;->a:Landroid/view/View;

    new-instance v3, Lcom/xueqiu/android/community/r;

    invoke-direct {v3, p0, v1}, Lcom/xueqiu/android/community/r;-><init>(Lcom/xueqiu/android/community/p;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 992
    iget-object v0, v0, Lcom/xueqiu/android/community/q;->c:Landroid/widget/RadioButton;

    new-instance v2, Lcom/xueqiu/android/community/r;

    invoke-direct {v2, p0, v1}, Lcom/xueqiu/android/community/r;-><init>(Lcom/xueqiu/android/community/p;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 994
    return-object p2

    .line 988
    :cond_1
    iget-object v2, v0, Lcom/xueqiu/android/community/q;->c:Landroid/widget/RadioButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method
