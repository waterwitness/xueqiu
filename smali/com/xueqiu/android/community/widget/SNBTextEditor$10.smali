.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$10;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$10;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 179
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$10;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 180
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$10;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-virtual {v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 182
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 183
    invoke-virtual {p2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 184
    const/16 v2, 0x33

    aget v3, v1, v3

    aget v1, v1, v8

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    double-to-int v4, v4

    sub-int/2addr v1, v4

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 185
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 186
    return v8
.end method
