.class final Lcom/xueqiu/android/community/widget/SNBTextEditor$14;
.super Ljava/lang/Object;
.source "SNBTextEditor.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(ILjava/lang/CharSequence;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/xueqiu/android/community/widget/SNBTextEditor;


# direct methods
.method constructor <init>(Lcom/xueqiu/android/community/widget/SNBTextEditor;)V
    .locals 0

    .prologue
    .line 287
    iput-object p1, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$14;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 290
    if-eqz p2, :cond_0

    .line 291
    iget-object v0, p0, Lcom/xueqiu/android/community/widget/SNBTextEditor$14;->a:Lcom/xueqiu/android/community/widget/SNBTextEditor;

    check-cast p1, Lcom/xueqiu/android/community/widget/SNBRichEditText;

    invoke-static {v0, p1}, Lcom/xueqiu/android/community/widget/SNBTextEditor;->a(Lcom/xueqiu/android/community/widget/SNBTextEditor;Lcom/xueqiu/android/community/widget/SNBRichEditText;)Lcom/xueqiu/android/community/widget/SNBRichEditText;

    .line 293
    :cond_0
    return-void
.end method
