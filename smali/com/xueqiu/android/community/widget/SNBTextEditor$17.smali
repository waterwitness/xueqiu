.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$17;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Lcom/xueqiu/android/community/widget/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

.field final synthetic b:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iput-object p2, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    iget-object v1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;->a:Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-static {v0, p1, v1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;ILcom/xueqiu/android/community/widget/SNBRichEditText;)V

    .line 359
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->q(Lcom/xueqiu/android/community/widget/SNBTextEditor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$17;->b:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-static {v0}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->c(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V

    .line 362
    :cond_0
    return-void
.end method
