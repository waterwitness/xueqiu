.class final Lcom/xueqiu/android/community/g;
.super Landroid/support/v4/a/v;
.source "FindPeopleFromWeiBoActivity.java"


# instance fields
.field final synthetic b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;


# direct methods
.method public constructor <init>(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;Landroid/support/v4/a/q;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/xueqiu/android/community/g;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    .line 174
    invoke-direct {p0, p2}, Landroid/support/v4/a/v;-><init>(Landroid/support/v4/a/q;)V

    .line 175
    return-void
.end method


# virtual methods
.method public final a(I)Landroid/support/v4/a/i;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/community/g;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->c(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Landroid/support/v4/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/g;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->c(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Landroid/support/v4/a/i;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/xueqiu/android/community/g;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->d(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public final b(I)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/xueqiu/android/community/g;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v0}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->d(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xueqiu/android/community/g;->b:Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;

    invoke-static {v1}, Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;->d(Lcom/xueqiu/android/community/FindPeopleFromWeiBoActivity;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method
