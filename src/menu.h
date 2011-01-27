#ifndef MENU_H
#define MENU_H

#include <onering.h>
#include <QSet>
#include <QMenu>

class MenuManager
{
public:
	MenuManager();
	~MenuManager();

	onering_response_handle_t processRequest(const char* appname, const char* method, const char* path, const char* body, const char** response, int* response_len);
	void freeResponse(const char* appname, onering_response_handle_t response_handle);

	QByteArray createMenu();
	QByteArray destroyMenu(QMenu* menu);
	QByteArray addSeparator(QMenu* menu);
	QByteArray addMenuItem(QMenu* menu, const QString& text);

private:
	QString getId(QObject* obj);
	QMenu* getInstance(const QString& id);

};

onering_response_handle_t menu_app(const char* appname, const char* method, 
		const char* path, const char* body,
		const char** response, int* response_len);
void menu_app_free_response(const char* appname, onering_response_handle_t response_handle);

#endif
