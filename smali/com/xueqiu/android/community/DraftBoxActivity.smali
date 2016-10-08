.class public Lcom/xueqiu/android/community/DraftBoxActivity;
.super Lcom/xueqiu/android/common/b;
.source "DraftBoxActivity.java"


# instance fields
.field private j:Landroid/widget/ListView;

.field private k:Lcom/xueqiu/android/community/c;

.field private p:I

.field private q:Ljava/lang/String;

.field private r:Lcom/xueqiu/android/base/storage/DBManager;

.field private s:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/xueqiu/android/common/b;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->s:Z

    .line 201
    return-void
.end method

.method static synthetic a(Lcom/xueqiu/android/community/DraftBoxActivity;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->p:I

    return v0
.end method

.method static synthetic a(Lcom/xueqiu/android/community/DraftBoxActivity;I)I
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->p:I

    return p1
.end method

.method static synthetic a(Lcom/xueqiu/android/community/DraftBoxActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->q:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(ILjava/lang/String;)Z
    .locals 4

    .prologue
    .line 41
    .line 4162
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xueqiu/android/base/storage/DBManager;->deleteDraft(I)Z

    move-result v0

    .line 4163
    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4164
    const-string v1, "http://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 4165
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xueqiu/android/base/util/ad;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4166
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 41
    :cond_1
    return v0
.end method

.method static synthetic b(Lcom/xueqiu/android/community/DraftBoxActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->q:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/xueqiu/android/community/DraftBoxActivity;)Lcom/xueqiu/android/base/storage/DBManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    return-object v0
.end method

.method static synthetic d(Lcom/xueqiu/android/community/DraftBoxActivity;)Lcom/xueqiu/android/community/c;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    return-object v0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 182
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 198
    :goto_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 184
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070070

    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 185
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xueqiu/android/community/DraftBoxActivity$3;

    invoke-direct {v2, p0}, Lcom/xueqiu/android/community/DraftBoxActivity$3;-><init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700b5

    .line 195
    invoke-virtual {p0, v1}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 182
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->setContentView(I)V

    .line 1060
    const v0, 0x7f07012b

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1062
    const v0, 0x7f0e01e2

    invoke-virtual {p0, v0}, Lcom/xueqiu/android/community/DraftBoxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->j:Landroid/widget/ListView;

    .line 1064
    invoke-static {}, Lcom/xueqiu/android/base/storage/DBManager;->getInstance()Lcom/xueqiu/android/base/storage/DBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    .line 1065
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getAllDraft()Landroid/database/Cursor;

    move-result-object v0

    .line 1067
    new-instance v1, Lcom/xueqiu/android/community/c;

    invoke-direct {v1, p0, p0, v0}, Lcom/xueqiu/android/community/c;-><init>(Lcom/xueqiu/android/community/DraftBoxActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    .line 1068
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->j:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1070
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/DraftBoxActivity$1;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/DraftBoxActivity$1;-><init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1088
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/xueqiu/android/community/DraftBoxActivity$2;

    invoke-direct {v1, p0}, Lcom/xueqiu/android/community/DraftBoxActivity$2;-><init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1100
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 56
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 174
    const-string v0, "\u5220\u9664\u786e\u8ba4"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 175
    const v0, 0x7f07011b

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/xueqiu/android/common/b;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 178
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/xueqiu/android/community/DraftBoxActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    new-array v1, v4, [I

    const v2, 0x7f010096

    aput v2, v1, v3

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 291
    const v1, 0x7f070084

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 292
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 291
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/support/v4/view/ak;->a(Landroid/view/MenuItem;I)V

    .line 293
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    if-eqz v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    .line 1194
    iget-object v0, v0, Landroid/support/v4/widget/a;->c:Landroid/database/Cursor;

    .line 272
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    .line 2194
    iget-object v0, v0, Landroid/support/v4/widget/a;->c:Landroid/database/Cursor;

    .line 273
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    .line 3194
    iget-object v0, v0, Landroid/support/v4/widget/a;->c:Landroid/database/Cursor;

    .line 274
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    .line 279
    :cond_1
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onDestroy()V

    .line 280
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 299
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f070070

    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b1

    .line 300
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/xueqiu/android/community/DraftBoxActivity$4;

    invoke-direct {v3, p0}, Lcom/xueqiu/android/community/DraftBoxActivity$4;-><init>(Lcom/xueqiu/android/community/DraftBoxActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0700b5

    .line 315
    invoke-virtual {p0, v2}, Lcom/xueqiu/android/community/DraftBoxActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 318
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/xueqiu/android/common/b;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/xueqiu/android/common/b;->onResume()V

    .line 109
    iget-boolean v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->s:Z

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->r:Lcom/xueqiu/android/base/storage/DBManager;

    invoke-virtual {v0}, Lcom/xueqiu/android/base/storage/DBManager;->getAllDraft()Landroid/database/Cursor;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_1

    .line 113
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-virtual {p0}, Lcom/xueqiu/android/community/DraftBoxActivity;->finish()V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    invoke-virtual {v1, v0}, Lcom/xueqiu/android/community/c;->b(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 117
    iget-object v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->k:Lcom/xueqiu/android/community/c;

    invoke-virtual {v0}, Lcom/xueqiu/android/community/c;->notifyDataSetChanged()V

    goto :goto_0

    .line 121
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xueqiu/android/community/DraftBoxActivity;->s:Z

    goto :goto_0
.end method
